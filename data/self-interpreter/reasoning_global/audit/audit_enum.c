/* Independent completeness audit for the global-floor inventories.
 *
 * Enumerates EVERY closed BLC term of exactly N bits (no resource triples
 * assumed), and keeps those that pass three necessary conditions for a
 * minimum self-interpreter, each computed naively:
 *   (1) two nonlinear binders, neither an ancestor of the other;
 *   (2) some subterm with three distinct free variables;
 *   (3) no beta-redex whose contraction gives a strictly shorter term
 *       (the contraction is carried out and the result measured).
 * Survivors are printed as wires, one per line; counts go to stderr.
 * Written from the definitions, not from the lane's enumerator.
 *
 * usage: audit_enum N > survivors.txt
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXT 64
enum { VAR = 0, LAM = 1, APP = 2 };

static int N;
static int tag[MAXT], idx[MAXT], end_[MAXT], ntok;
static int pend[MAXT];                 /* depths of the terms still to write */
static long long total, pass1, pass2, pass3;

/* ---- structure of the finished token array ---- */
static int binder[MAXT];               /* for a VAR token: position of its LAM */
static int uses[MAXT];                 /* for a LAM token: occurrences of its variable */

static int span(int p)                 /* end position (exclusive) of the subterm at p */
{
    if (tag[p] == VAR) return end_[p] = p + 1;
    if (tag[p] == LAM) return end_[p] = span(p + 1);
    int a = span(p + 1);
    return end_[p] = span(a);
}

static void bind(int p, int *stack, int d)
{
    if (tag[p] == VAR) { binder[p] = stack[d - 1 - idx[p]]; uses[binder[p]]++; return; }
    if (tag[p] == LAM) { stack[d] = p; uses[p] = 0; bind(p + 1, stack, d + 1); return; }
    bind(p + 1, stack, d);
    bind(end_[p + 1], stack, d);
}

/* free variables of the subterm at p, as a bitmask of binder positions */
static unsigned long long fvmask[MAXT];
static unsigned long long fv(int p)
{
    unsigned long long m;
    if (tag[p] == VAR) m = 1ULL << binder[p];
    else if (tag[p] == LAM) m = fv(p + 1) & ~(1ULL << p);
    else { m = fv(p + 1); m |= fv(end_[p + 1]); }
    return fvmask[p] = m;
}

/* ---- contraction of the redex at application p (tag[p+1] == LAM) ---- */
static int otag[MAXT * 8], oidx[MAXT * 8], on;

static void emit_shifted(int a, int aend, int by)
{
    /* copy tokens [a, aend) raising the indices of variables free in it by `by` */
    int depth[MAXT * 2], sp = 0, d = 0;   /* depth bookkeeping by spans */
    int close[MAXT];                      /* close[j]: position where a LAM's scope ends */
    for (int j = a; j < aend; j++) {
        while (sp > 0 && depth[sp - 1] == j) { sp--; d--; }
        otag[on] = tag[j];
        if (tag[j] == VAR) oidx[on] = idx[j] >= d ? idx[j] + by : idx[j];
        else oidx[on] = 0;
        on++;
        if (tag[j] == LAM) { depth[sp++] = end_[j]; d++; }
    }
    (void)close;
}

static int contracted_bits(int p)
{
    int lam = p + 1, body = p + 2, bend = end_[lam], a = bend, aend = end_[a];
    on = 0;
    for (int j = 0; j < p; j++) { otag[on] = tag[j]; oidx[on] = idx[j]; on++; }
    {
        int depth[MAXT * 2], sp = 0, d = 0;
        for (int j = body; j < bend; j++) {
            while (sp > 0 && depth[sp - 1] == j) { sp--; d--; }
            if (tag[j] == VAR) {
                if (idx[j] == d) emit_shifted(a, aend, d);
                else { otag[on] = VAR; oidx[on] = idx[j] > d ? idx[j] - 1 : idx[j]; on++; }
            } else {
                otag[on] = tag[j]; oidx[on] = 0; on++;
                if (tag[j] == LAM) { depth[sp++] = end_[j]; d++; }
            }
        }
    }
    for (int j = aend; j < ntok; j++) { otag[on] = tag[j]; oidx[on] = idx[j]; on++; }
    int bits = 0;
    for (int j = 0; j < on; j++) bits += otag[j] == VAR ? oidx[j] + 2 : 2;
    return bits;
}

static void visit(void)
{
    int stack[MAXT];
    total++;
    span(0);
    bind(0, stack, 0);

    /* (1) incomparable nonlinear pair */
    int ok = 0;
    for (int p = 0; p < ntok && !ok; p++)
        if (tag[p] == LAM && uses[p] >= 2)
            for (int q = end_[p]; q < ntok; q++)
                if (tag[q] == LAM && uses[q] >= 2) { ok = 1; break; }
    if (!ok) return;
    pass1++;

    /* (2) a subterm with three distinct free variables */
    fv(0);
    ok = 0;
    for (int p = 0; p < ntok; p++)
        if (__builtin_popcountll(fvmask[p]) >= 3) { ok = 1; break; }
    if (!ok) return;
    pass2++;

    /* (3) no strictly shrinking contraction */
    for (int p = 0; p < ntok; p++)
        if (tag[p] == APP && tag[p + 1] == LAM && contracted_bits(p) < N) return;
    pass3++;

    for (int j = 0; j < ntok; j++) {
        if (tag[j] == LAM) fputs("00", stdout);
        else if (tag[j] == APP) fputs("01", stdout);
        else { for (int i = 0; i <= idx[j]; i++) putchar('1'); putchar('0'); }
    }
    putchar('\n');
}

/* write one more token; np = number of pending terms, top = pend[np-1] */
static void gen(int bits, int np)
{
    if (np == 0) { if (bits == N) visit(); return; }
    if (bits + 2 * np > N) return;
    int d = pend[np - 1];
    /* variable */
    for (int i = 0; i < d && bits + i + 2 + 2 * (np - 1) <= N; i++) {
        tag[ntok] = VAR; idx[ntok] = i; ntok++;
        gen(bits + i + 2, np - 1);
        ntok--;
    }
    pend[np - 1] = d;
    /* abstraction: its body is the term to write, one binder deeper */
    tag[ntok] = LAM; idx[ntok] = 0; ntok++;
    pend[np - 1] = d + 1;
    gen(bits + 2, np);
    pend[np - 1] = d;
    ntok--;
    /* application: function first, then the argument, both at depth d */
    tag[ntok] = APP; idx[ntok] = 0; ntok++;
    pend[np] = d;
    gen(bits + 2, np + 1);
    pend[np - 1] = d;
    ntok--;
}

int main(int argc, char **argv)
{
    N = argc > 1 ? atoi(argv[1]) : 40;
    pend[0] = 0;
    gen(0, 1);
    fprintf(stderr, "bits %d: closed terms %lld; incomparable nonlinear pair %lld; "
            "and width 3: %lld; and no shrinking contraction %lld\n",
            N, total, pass1, pass2, pass3);
    return 0;
}
