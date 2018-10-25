import REPL
using REPL.TerminalMenus

options = ["One", "Two", "Three"]
menu = MultiSelectMenu(options)

choice = request("Tester", menu)
