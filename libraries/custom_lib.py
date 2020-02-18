from robot.api.deco import keyword


@keyword('Do Nothing')
def do_nothing(self, *args):
    for arg in args:
        print(arg)
