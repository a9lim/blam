// Binary Lambda Calculus universal machine in Rust.
// Reads a BLC program from stdin followed by its input, writes the
// program's output. Byte mode by default; any argument selects bit
// mode, as in uni.py / uni.js / uni.rb / uni.pl.
//
//   rustc --edition 2021 -O uni.rs && ./uni  < prog.blc8   # byte mode
//   ./uni -                    < prog.blc    # bit mode
//
// Standard library only. Terms become host closures over a persistent
// environment (de Bruijn indices index a cons list); arguments are
// lazy, memoized thunks, so semantics match the call-by-name reference
// interpreters while each suspension evaluates at most once.

use std::cell::RefCell;
use std::io::{Read, Write};
use std::rc::Rc;

// A value is a host function, or a host integer surfacing through the
// Scott decoders (the trick uni.py plays with Python dynamism).
#[derive(Clone)]
struct Value(Rc<Vk>);

enum Vk {
    Fun(Box<dyn Fn(Thunk) -> Value>),
    Int(u64),
}

impl Value {
    fn fun(f: impl Fn(Thunk) -> Value + 'static) -> Value {
        Value(Rc::new(Vk::Fun(Box::new(f))))
    }
    fn int(n: u64) -> Value {
        Value(Rc::new(Vk::Int(n)))
    }
    fn apply(&self, arg: Thunk) -> Value {
        match &*self.0 {
            Vk::Fun(f) => f(arg),
            Vk::Int(n) => panic!("applied an output integer: {n}"),
        }
    }
    fn as_int(&self) -> u64 {
        match &*self.0 {
            Vk::Int(n) => *n,
            Vk::Fun(_) => panic!("expected an output integer"),
        }
    }
}

#[derive(Clone)]
struct Thunk(Rc<RefCell<ThunkState>>);

enum ThunkState {
    Done(Value),
    Pending(Rc<dyn Fn() -> Value>),
}

impl Thunk {
    fn ready(v: Value) -> Thunk {
        Thunk(Rc::new(RefCell::new(ThunkState::Done(v))))
    }
    fn suspend(f: impl Fn() -> Value + 'static) -> Thunk {
        Thunk(Rc::new(RefCell::new(ThunkState::Pending(Rc::new(f)))))
    }
    fn force(&self) -> Value {
        let pending = match &*self.0.borrow() {
            ThunkState::Done(v) => return v.clone(),
            ThunkState::Pending(f) => f.clone(),
        };
        let v = pending();
        *self.0.borrow_mut() = ThunkState::Done(v.clone());
        v
    }
}

// Environments: a persistent cons list of thunks.
enum Env {
    Nil,
    Cons(Thunk, Rc<Env>),
}

fn lookup(mut env: &Env, mut i: usize) -> Thunk {
    loop {
        match env {
            Env::Cons(t, rest) => {
                if i == 0 {
                    return t.clone();
                }
                i -= 1;
                env = rest;
            }
            Env::Nil => panic!("open term"),
        }
    }
}

// Terms, parsed from the prefix code: 00 λ | 01 application | 1ⁱ⁺¹0 var i.
enum Term {
    Var(usize),
    Lam(Rc<Term>),
    App(Rc<Term>, Rc<Term>),
}

fn eval(t: &Rc<Term>, env: &Rc<Env>) -> Value {
    match &**t {
        Term::Var(i) => lookup(env, *i).force(),
        Term::Lam(b) => {
            let (b, env) = (b.clone(), env.clone());
            Value::fun(move |arg| eval(&b, &Rc::new(Env::Cons(arg, env.clone()))))
        }
        Term::App(f, a) => {
            let fv = eval(f, env);
            let (a, env) = (a.clone(), env.clone());
            fv.apply(Thunk::suspend(move || eval(&a, &env)))
        }
    }
}

// Program bits come first on stdin: whole bytes in byte mode, ASCII
// '0'/'1' characters in bit mode. Whatever follows is program input
// (byte mode discards the rest of a partially parsed byte, matching
// the reference interpreters).
struct BitReader {
    data: Vec<u8>,
    pos: usize,
    bit: u32,
    bytemode: bool,
}

impl BitReader {
    fn next_bit(&mut self) -> bool {
        if self.bytemode {
            let b = (self.data[self.pos] >> (7 - self.bit)) & 1 == 1;
            self.bit += 1;
            if self.bit == 8 {
                self.bit = 0;
                self.pos += 1;
            }
            b
        } else {
            let c = self.data[self.pos];
            self.pos += 1;
            c & 1 == 1 // '0' = 0x30, '1' = 0x31
        }
    }
    fn next_byte(&mut self) -> Option<u8> {
        if self.bit != 0 {
            self.bit = 0;
            self.pos += 1;
        }
        let c = self.data.get(self.pos).copied();
        self.pos += 1;
        c
    }
}

fn parse(r: &mut BitReader) -> Rc<Term> {
    if r.next_bit() {
        let mut i = 0;
        while r.next_bit() {
            i += 1;
        }
        Rc::new(Term::Var(i))
    } else if r.next_bit() {
        let f = parse(r);
        let a = parse(r);
        Rc::new(Term::App(f, a))
    } else {
        Rc::new(Term::Lam(parse(r)))
    }
}

// Scott/Church I/O forms, wire polarity included: bit 0 encodes
// true = λx.λy.x, and nil = false = λz.λy.y ends lists.
fn bit2lam(bit: bool) -> Value {
    Value::fun(move |x0| Value::fun(move |x1| if bit { x1.force() } else { x0.force() }))
}

fn nil() -> Value {
    Value::fun(|_z| Value::fun(|y| y.force()))
}

fn cons(head: Value, tail: Thunk) -> Value {
    let head = Thunk::ready(head);
    Value::fun(move |z| z.force().apply(head.clone()).apply(tail.clone()))
}

fn byte2lam(bits: u8, n: u32) -> Value {
    if n == 0 {
        nil()
    } else {
        cons(
            bit2lam((bits >> (n - 1)) & 1 == 1),
            Thunk::suspend(move || byte2lam(bits, n - 1)),
        )
    }
}

// The lazily consumed input stream.
fn input(reader: Rc<RefCell<BitReader>>, bytemode: bool) -> Value {
    let next = reader.borrow_mut().next_byte();
    match next {
        None => nil(),
        Some(c) => cons(
            if bytemode { byte2lam(c, 8) } else { bit2lam(c & 1 == 1) },
            Thunk::suspend(move || input(reader.clone(), bytemode)),
        ),
    }
}

// Decoding mirrors uni.py: a Church bit applied to two constant
// functions selects one; a dummy application forces the suspension.
fn lam2bit(lambit: &Value) -> u64 {
    lambit
        .apply(Thunk::ready(Value::fun(|_| Value::int(0))))
        .apply(Thunk::ready(Value::fun(|_| Value::int(1))))
        .apply(Thunk::ready(Value::int(0)))
        .as_int()
}

fn lam2byte(lambits: &Value, x: u64) -> u64 {
    let handler = Value::fun(move |bit: Thunk| {
        Value::fun(move |tail: Thunk| {
            let bit = bit.clone();
            Value::fun(move |_| {
                let b = lam2bit(&bit.force());
                Value::int(lam2byte(&tail.force(), 2 * x + b))
            })
        })
    });
    lambits
        .apply(Thunk::ready(handler))
        .apply(Thunk::ready(Value::int(x)))
        .as_int()
}

fn output(list: Value, bytemode: bool) -> u64 {
    let handler = Value::fun(move |c: Thunk| {
        let cv = c.force();
        let mut out = std::io::stdout();
        if bytemode {
            out.write_all(&[lam2byte(&cv, 0) as u8]).expect("write");
        } else {
            out.write_all(if lam2bit(&cv) == 1 { b"1" } else { b"0" })
                .expect("write");
        }
        Value::fun(move |tail: Thunk| {
            Value::fun(move |_| Value::int(output(tail.force(), bytemode)))
        })
    });
    list.apply(Thunk::ready(handler))
        .apply(Thunk::ready(Value::int(0)))
        .as_int()
}

fn run() {
    let bytemode = std::env::args().len() <= 1;
    let mut data = Vec::new();
    std::io::stdin().read_to_end(&mut data).expect("read stdin");
    let mut reader = BitReader { data, pos: 0, bit: 0, bytemode };
    let prog = parse(&mut reader);
    let reader = Rc::new(RefCell::new(reader));
    let v = eval(&prog, &Rc::new(Env::Nil));
    let out = v.apply(Thunk::suspend(move || input(reader.clone(), bytemode)));
    output(out, bytemode);
}

fn main() {
    // Deep outputs recurse (as in the reference interpreters, which
    // raise their own recursion limits); give the run a fat stack.
    std::thread::Builder::new()
        .stack_size(1 << 30)
        .spawn(run)
        .unwrap()
        .join()
        .unwrap();
}
