//! Tromp's lambda diagrams (`AIT.lhs`: `diagram`, `boxChar`, `toPBM`).
//!
//! A lambda is a horizontal line over its body, a variable a vertical
//! line up to its binder, an application a horizontal link between the
//! function's line and the argument's. `alt` is the alternative style,
//! which links applications at the function's rightmost line and draws
//! variables one row shorter. The marks go down in the Haskell's writer
//! order, and where two land on one cell the first one written wins (the
//! `accumArray` over the reversed log).

use crate::args::R;
use blam::blc::Term;

/// The character grid: `rows` × `cols`, the last column all newlines.
struct Grid {
    rows: usize,
    cols: usize,
    cells: Vec<u8>,
}

impl Grid {
    fn at(&self, j: i64, i: i64) -> Option<u8> {
        if j < 0 || i < 0 || j as usize >= self.rows || i as usize >= self.cols {
            return None;
        }
        Some(self.cells[j as usize * self.cols + i as usize])
    }
}

/// One mark of the writer log.
type Mark = ((i64, i64), u8);

/// `diagWrite y x t`: ((height, width), (left line, right line)).
fn write(
    y: i64,
    x: i64,
    t: &Term,
    dy: i64,
    alt: bool,
    log: &mut Vec<Mark>,
) -> ((i64, i64), (i64, i64)) {
    match t {
        Term::Lam(e) => {
            let dim = write(y + 1, x, e, dy, alt, log);
            let ((_, x1), _) = dim;
            for i in x..=x1 {
                log.push(((y, i), b'_'));
            }
            dim
        }
        Term::App(f, a) => {
            let ((fy, fx), (fxl, fxr)) = write(y, x, f, dy, alt, log);
            let fx1 = if alt { fxr } else { fxl };
            let ((ay, ax), (axl, _)) = write(y, fx + 2, a, dy, alt, log);
            let my = 1 - dy + fy.max(ay);
            for i in fy + 1..=my + dy {
                log.push(((i, fx1), b'|'));
            }
            for i in ay + 1..=my {
                log.push(((i, axl), b'|'));
            }
            for i in fx1 + 1..axl {
                log.push(((my, i), b'_'));
            }
            ((my + dy, ax), (fx1, axl))
        }
        Term::Var(k) => {
            let n = i64::from(*k) - 1;
            for i in 1 - dy..=n {
                log.push(((y - i, x + 1), b'|'));
            }
            ((y - 1 + dy, x + 2), (x + 1, x + 1))
        }
    }
}

/// `diagArray . runWriter . diagWrite 0 0`.
fn grid(t: &Term, alt: bool) -> Grid {
    let dy = if alt { 0 } else { 1 };
    let mut log = Vec::new();
    let ((y, x), _) = write(0, 0, t, dy, alt, &mut log);
    let rows = (y + 1).max(0) as usize;
    let cols = (x + 2).max(0) as usize;
    let mut cells = vec![b' '; rows * cols];
    for j in 0..rows {
        cells[j * cols + cols - 1] = b'\n';
    }
    // Reversed log, later entries overwriting: the first mark wins.
    for &((j, i), c) in log.iter().rev() {
        if j >= 0 && i >= 0 && (j as usize) < rows && (i as usize) < cols {
            cells[j as usize * cols + i as usize] = c;
        }
    }
    Grid { rows, cols, cells }
}

/// `diagram`: the ASCII diagram.
pub fn ascii(t: &Term, alt: bool) -> String {
    String::from_utf8(grid(t, alt).cells).expect("ASCII")
}

/// `boxChar`: the diagram redrawn in box-drawing characters, sampling
/// every other column.
pub fn boxchar(t: &Term, alt: bool) -> R<String> {
    let a = grid(t, alt);
    let (y, x) = (a.rows as i64 - 1, a.cols as i64 - 1);
    let y2 = if alt { y } else { y - 1 };
    let get = |j: i64, i: i64| {
        a.at(j, i)
            .ok_or_else(|| format!("blam blc: boxchar: the diagram has no cell ({j},{i})"))
    };
    let mut out = String::new();
    let mut j = 0;
    let mut i = 1;
    loop {
        if i > x {
            if j < y2 {
                j += 1;
                i = 1;
                continue;
            }
            break;
        }
        let below = j < y && get(j + 1, i)? == b'|';
        let c = match (get(j, i - 1)?, get(j, i)?, get(j, i + 1)?, below) {
            (_, b' ', _, _) => ' ',
            (b'_', b'|', b'_', _) => '┼',
            (b' ', b'|', b' ', _) => '│',
            (b'_', b'|', b' ', true) => '┤',
            (b'_', b'|', b' ', false) => '┘',
            (b' ', b'|', b'_', true) => '├',
            (b' ', b'|', b'_', false) => '└',
            (_, b'_', _, true) => '┬',
            (_, b'_', _, false) => '─',
            (_, c, _, _) => {
                return Err(format!(
                    "blam blc: boxchar: Unexpected char{}",
                    char::from(c).escape_debug()
                ))
            }
        };
        out.push(c);
        out.push(match get(j, i + 2)? {
            b'_' => '─',
            c => char::from(c),
        });
        i += 4;
    }
    Ok(out)
}

/// `toPBM`: a plain portable bitmap, two pixel rows per diagram row after
/// the first (lines above, underscores below).
pub fn pbm(t: &Term, alt: bool) -> String {
    let a = grid(t, alt);
    let (y, x) = (a.rows - 1, a.cols - 1);
    let mut out = format!("P1\n{x} {}\n", 2 * y + 1);
    let pixel = |bottom: bool, c: u8, out: &mut String| match c {
        b' ' => out.push_str(" 0"),
        b'_' => out.push_str(if bottom { " 1" } else { " 0" }),
        b'|' => out.push_str(" 1"),
        c => out.push(char::from(c)),
    };
    for j in 0..=y {
        let passes: &[bool] = if j == 0 { &[true] } else { &[false, true] };
        for &bottom in passes {
            for i in 0..=x {
                pixel(bottom, a.cells[j * a.cols + i], &mut out);
            }
        }
    }
    out
}

#[cfg(test)]
mod tests {
    use super::*;
    use blam::blc::{lam, var};

    #[test]
    fn identity_diagram() {
        // λx.x: a lambda bar over one variable line.
        let d = ascii(&lam(var(1)), false);
        assert_eq!(d, "___\n | \n");
    }
}
