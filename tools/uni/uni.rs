// Binary Lambda Calculus universal machine in Rust.
// Reads a BLC program from stdin followed by its input, writes the
// program's output. Byte mode by default; any argument selects bit
// mode, as in uni.py / uni.js / uni.rb / uni.pl.
//
//   rustc --edition 2021 -O uni.rs && ./uni  < prog.blc8   # byte mode
//   ./uni -                    < prog.blc    # bit mode
//
// Standard library only. Terms become host closures over a persistent
// environment (de Bruijn indices index a cons list). Program argument
// suspensions are call-by-name — re-evaluated on every use, exactly
// like uni.py's eta-suspensions — while input cells are memoized (the
// counterpart of uni.py's inp[n] cache), so duplicated input tails
// consume each stdin byte once. Stdin is read one byte at a time and
// stdout is flushed per emission, so piping to and from a live
// producer/consumer behaves like the reference interpreters.

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

// Suspensions come in three classes. Program arguments are Name —
// re-evaluated on every force, matching uni.py's `lambda arg:
// q(*args)(arg)` eta-suspensions, so any effects the output decoders
// run while forcing replay exactly as often as in the reference.
// Need memoizes (used only for pure constructor tails); Ready is a
// forced value.
#[derive(Clone)]
struct Thunk(Rc<RefCell<ThunkState>>);

enum ThunkState {
    Done(Value),
    Need(Rc<dyn Fn() -> Value>),
    Name(Rc<dyn Fn() -> Value>),
}

impl Thunk {
    fn ready(v: Value) -> Thunk {
        Thunk(Rc::new(RefCell::new(ThunkState::Done(v))))
    }
    fn need(f: impl Fn() -> Value + 'static) -> Thunk {
        Thunk(Rc::new(RefCell::new(ThunkState::Need(Rc::new(f)))))
    }
    fn name(f: impl Fn() -> Value + 'static) -> Thunk {
        Thunk(Rc::new(RefCell::new(ThunkState::Name(Rc::new(f)))))
    }
    fn force(&self) -> Value {
        enum Act {
            Ret(Value),
            Memo(Rc<dyn Fn() -> Value>),
            Run(Rc<dyn Fn() -> Value>),
        }
        let act = match &*self.0.borrow() {
            ThunkState::Done(v) => Act::Ret(v.clone()),
            ThunkState::Need(f) => Act::Memo(f.clone()),
            ThunkState::Name(f) => Act::Run(f.clone()),
        };
        match act {
            Act::Ret(v) => v,
            Act::Memo(f) => {
                let v = f();
                *self.0.borrow_mut() = ThunkState::Done(v.clone());
                v
            }
            Act::Run(f) => f(),
        }
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
            fv.apply(Thunk::name(move || eval(&a, &env)))
        }
    }
}

// Streaming bit source. Program bits come first on stdin — whole bytes
// in byte mode, one ASCII character per bit in bit mode — read one
// byte at a time exactly like uni.py's os.read(0,1), so a program can
// start producing output while its input is still being written.
// After the parse, any remaining bits of a partially consumed byte are
// discarded (input reads bypass the bit buffer), matching the
// reference interpreters.
struct BitReader {
    stdin: std::io::Stdin,
    cur: u8,
    nbit: u32,
    bytemode: bool,
}

impl BitReader {
    fn new(bytemode: bool) -> BitReader {
        BitReader {
            stdin: std::io::stdin(),
            cur: 0,
            nbit: 0,
            bytemode,
        }
    }
    fn read1(&mut self) -> Option<u8> {
        let mut b = [0u8];
        loop {
            match self.stdin.lock().read(&mut b) {
                Ok(0) => return None,
                Ok(_) => return Some(b[0]),
                Err(e) if e.kind() == std::io::ErrorKind::Interrupted => continue,
                Err(e) => panic!("read stdin: {e}"),
            }
        }
    }
    fn next_bit(&mut self) -> bool {
        if self.nbit == 0 {
            self.cur = self.read1().expect("eof inside program");
            self.nbit = if self.bytemode { 8 } else { 1 };
        }
        self.nbit -= 1;
        (self.cur >> self.nbit) & 1 == 1 // bit mode: '0' = 0x30, '1' = 0x31
    }
    fn next_byte(&mut self) -> Option<u8> {
        self.read1()
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

fn byte2lam(bits: u8, n: u32) -> Value {
    if n == 0 {
        nil()
    } else {
        let head = Thunk::ready(bit2lam((bits >> (n - 1)) & 1 == 1));
        let tail = Thunk::need(move || byte2lam(bits, n - 1));
        Value::fun(move |z| z.force().apply(head.clone()).apply(tail.clone()))
    }
}

// The input stream, mirroring uni.py's input(n)/inp[] exactly: cells
// are memoized by index (a duplicated tail must not consume stdin
// twice), each cell reads its byte on first construction, and
// destructing cell n materializes cell n+1 eagerly — one byte of
// read-ahead, just like the reference's strict `z(head)(input(n+1))`.
struct Input {
    reader: BitReader,
    cells: Vec<Value>,
}

fn input(st: &Rc<RefCell<Input>>, n: usize, bytemode: bool) -> Value {
    let cell = {
        let mut s = st.borrow_mut();
        while s.cells.len() <= n {
            let cell = match s.reader.next_byte() {
                None => nil(),
                Some(c) => {
                    let head = if bytemode {
                        byte2lam(c, 8)
                    } else {
                        bit2lam(c & 1 == 1)
                    };
                    let st = st.clone();
                    let k = s.cells.len() + 1;
                    Value::fun(move |z| {
                        let partial = z.force().apply(Thunk::ready(head.clone()));
                        let tail = input(&st, k, bytemode);
                        partial.apply(Thunk::ready(tail))
                    })
                }
            };
            s.cells.push(cell);
        }
        s.cells[n].clone()
    };
    cell
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
    // uni.py constructs bytes([x]) at entry, so a malformed "byte" of
    // more than eight bits dies as soon as the ninth accumulates; the
    // same check here also makes the later u8 cast exact.
    if x > 255 {
        panic!("output byte out of range: {x}");
    }
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
        // uni.py writes through os.write, which is unbuffered; flushing
        // per emission keeps interactive pipelines live.
        out.flush().expect("flush");
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
    let mut reader = BitReader::new(bytemode);
    let prog = parse(&mut reader);
    let v = eval(&prog, &Rc::new(Env::Nil));
    // First input cell built eagerly — uni.py's `prog(input(0))`
    // evaluates input(0), reading one byte, before the program runs.
    let st = Rc::new(RefCell::new(Input {
        reader,
        cells: Vec::new(),
    }));
    let first = input(&st, 0, bytemode);
    let out = v.apply(Thunk::ready(first));
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
        .unwrap()
}
