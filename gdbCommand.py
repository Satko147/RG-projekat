import gdb

# Custom GDB komanda
class PlayerPos(gdb.Command):
    def __init__(self):
        super(PlayerPos, self).__init__("playerPos", gdb.COMMAND_USER)

    def invoke(self, arg, from_tty):
        # Dohvatamo i printamo poziciju igraca
        player_pos_x = gdb.parse_and_eval("moveVec[0]")
        player_pos_y = gdb.parse_and_eval("moveVec[2]")
        print(f"Player Position: X={player_pos_x}, Y={player_pos_y}")

PlayerPos()
