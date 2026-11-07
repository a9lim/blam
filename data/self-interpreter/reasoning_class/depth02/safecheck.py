# rowgen.check with a wall-clock alarm per term (exponential blow-up guard)
import signal, rowgen
class Alarm(Exception): pass
def _h(sig, frm): raise Alarm()
signal.signal(signal.SIGALRM, _h)
def check(R, fuel=1500, limit=0.3):
    signal.setitimer(signal.ITIMER_REAL, limit)
    try:
        return rowgen.check(R, fuel)
    except Alarm:
        return False, 'alarm'
    finally:
        signal.setitimer(signal.ITIMER_REAL, 0)
