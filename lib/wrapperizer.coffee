

module.exports =
  config:
    patternList:
      type: "array"
      default: [
        "/[\\x20\\t]/g;",
        "/[^A-Za-z0-9\\-]/g;",
      ]
      order: 0
      title: "REGEX recipes to select what to change"
      description: """
      This pattern matches text to be replaced when the selected text "%ST%" is modified to become fixedText "%FT%"
      The replacement text for each match is in replaceList below.
      "/[\\x20\\t]/g;" selects all spaces and tabs to be replaced by the first item below, default "-"
      "/[^A-Za-z0-9\\-]/g;" selects any character that is not a letter, number or dash "-" to be replaced by the second item below, default ""
      """
    replaceList:
      type: "array"
      default: [
        "-",
        "",
      ]
      order: 1
      title: "REGEX replace text matched in patternList with this text."
      description: """
      Each match against patternList above is replaced with the same item number in this list.
      """
    newTextList:
      type: "array"
      default: [
        "[%ST%](\#%FT%)", # 0
        "[%ST%](./fileOne.md\#%FT%)",  # 1
        "[%ST%](./fileTwo.md\#%FT%)",  # 2
        "[%ST%](./fileThree.md\#%FT%)",  # 3
        "[%ST%](./fileFour.md\#%FT%)",  # 4
        "[%ST%](./fileFive.md\#%FT%)",  # 5
        "[%ST%](./fileSix.md\#%FT%)",  # 6
        "[%ST%](./fileSeven.md\#%FT%)",  # 7
        "[%ST%](./fileEight.md\#%FT%)",  # 8
        "[%ST%](./fileNine.md\#%FT%)",  # 9
        "%ST%",  # A
        "%ST%",  # B
        "%ST%",  # C
        "%ST%",  # D
        "%ST%",  # E
        "%ST%",  # F
        "%ST%",  # G
        "%ST%",  # H
        "%ST%",  # I
        "%ST%",  # J
        "%ST%",  # K
        "%ST%",  # L
        "%ST%",  # M
        "%ST%",  # N
        "%ST%",  # O
        "%ST%",  # P
        "%ST%",  # Q
        "%ST%",  # R
        "%ST%",  # S
        "%ST%",  # T
        "%ST%",  # U
        "%ST%",  # V
        "%ST%",  # W
        "%ST%",  # X
        "%ST%",  # Y
        "%ST%",  # Z
      ]
      order: 2
      title: "Link text for wrap function"
      description: """
      "%ST%" will be replaced with the selected text unmodified.
      "%FT%" will be replaced by the text which has been processed through the regex in patternList and replacement in replaceList.
      Select text to wrap in a link, alt-ctrl-m, alt-ctrl-0 to 9 two examples using the default values.
        Select "Hello there!" alt-ctrl-m, alt-ctrl-0 will replace "Hello there!" with "\\[Hello there!\\]\\(#hello-there\\)"
        Select "Hello there!" alt-ctrl-m, alt-ctrl-1 will replace "Hello there!" with "\\[Hello there!\\]\\(./CODES.md#hello-there\\)"
      """
    lowerCaseFixedText:
      type: "bool"
      default: true
      order: 3
      title: "Lowercase fixedText before inserting it."
    upperCaseSelectedText:
      type: "bool"
      default: false
      order: 4
      title: "Uppercase selectedText before inserting it."

  activate: (state) ->
    atom.commands.add "atom-workspace", "wrapperizer:wrap0", =>
      @wrap0()
    atom.commands.add "atom-workspace", "wrapperizer:wrap1", =>
      @wrap1()
    atom.commands.add "atom-workspace", "wrapperizer:wrap2", =>
      @wrap2()
    atom.commands.add "atom-workspace", "wrapperizer:wrap3", =>
      @wrap3()
    atom.commands.add "atom-workspace", "wrapperizer:wrap4", =>
      @wrap4()
    atom.commands.add "atom-workspace", "wrapperizer:wrap5", =>
      @wrap5()
    atom.commands.add "atom-workspace", "wrapperizer:wrap6", =>
      @wrap6()
    atom.commands.add "atom-workspace", "wrapperizer:wrap7", =>
      @wrap7()
    atom.commands.add "atom-workspace", "wrapperizer:wrap8", =>
      @wrap8()
    atom.commands.add "atom-workspace", "wrapperizer:wrap9", =>
      @wrap9()
    atom.commands.add "atom-workspace", "wrapperizer:wrapA", =>
      @wrapA()
    atom.commands.add "atom-workspace", "wrapperizer:wrapB", =>
      @wrapB()
    atom.commands.add "atom-workspace", "wrapperizer:wrapC", =>
      @wrapC()
    atom.commands.add "atom-workspace", "wrapperizer:wrapD", =>
      @wrapD()
    atom.commands.add "atom-workspace", "wrapperizer:wrapE", =>
      @wrapE()
    atom.commands.add "atom-workspace", "wrapperizer:wrapF", =>
      @wrapF()
    atom.commands.add "atom-workspace", "wrapperizer:wrapG", =>
      @wrapG()
    atom.commands.add "atom-workspace", "wrapperizer:wrapH", =>
      @wrapH()
    atom.commands.add "atom-workspace", "wrapperizer:wrapI", =>
      @wrapI()
    atom.commands.add "atom-workspace", "wrapperizer:wrapJ", =>
      @wrapJ()
    atom.commands.add "atom-workspace", "wrapperizer:wrapK", =>
      @wrapK()
    atom.commands.add "atom-workspace", "wrapperizer:wrapL", =>
      @wrapL()
    atom.commands.add "atom-workspace", "wrapperizer:wrapM", =>
      @wrapM()
    atom.commands.add "atom-workspace", "wrapperizer:wrapN", =>
      @wrapN()
    atom.commands.add "atom-workspace", "wrapperizer:wrapO", =>
      @wrapO()
    atom.commands.add "atom-workspace", "wrapperizer:wrapP", =>
      @wrapP()
    atom.commands.add "atom-workspace", "wrapperizer:wrapQ", =>
      @wrapQ()
    atom.commands.add "atom-workspace", "wrapperizer:wrapR", =>
      @wrapR()
    atom.commands.add "atom-workspace", "wrapperizer:wrapS", =>
      @wrapS()
    atom.commands.add "atom-workspace", "wrapperizer:wrapT", =>
      @wrapT()
    atom.commands.add "atom-workspace", "wrapperizer:wrapU", =>
      @wrapU()
    atom.commands.add "atom-workspace", "wrapperizer:wrapV", =>
      @wrapV()
    atom.commands.add "atom-workspace", "wrapperizer:wrapW", =>
      @wrapW()
    atom.commands.add "atom-workspace", "wrapperizer:wrapX", =>
      @wrapX()
    atom.commands.add "atom-workspace", "wrapperizer:wrapY", =>
      @wrapY()
    atom.commands.add "atom-workspace", "wrapperizer:wrapZ", =>
      @wrapZ()

  wrap0: ->
    editor = atom.workspace.getActiveTextEditor()
    if editor
      editor.getSelections().map((item) -> wrapSelection(editor, item, 0))

  wrap1: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 1))

  wrap2: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 2))

  wrap3: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 3))

  wrap4: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 4))

  wrap4: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 4))

  wrap5: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 5))

  wrap6: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 6))

  wrap7: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 7))

  wrap8: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 8))

  wrap9: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 9))

  wrapA: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 10))

  wrapB: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 11))

  wrapC: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 12))

  wrapD: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 13))

  wrapE: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 14))

  wrapF: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 15))

  wrapG: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 16))

  wrapH: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 17))

  wrapI: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 18))

  wrapJ: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 19))

  wrapK: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 20))

  wrapL: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 21))

  wrapM: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 22))

  wrapN: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 23))

  wrapO: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 24))

  wrapP: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 25))

  wrapQ: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 26))

  wrapR: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 27))

  wrapS: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 28))

  wrapT: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 29))

  wrapU: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 30))

  wrapV: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 31))

  wrapW: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 32))

  wrapX: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 33))

  wrapY: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 34))

  wrapZ: ->
    if editor = atom.workspace.getActiveTextEditor()
      editor.getSelections().map((item) -> wrapSelection(editor, item, 35))

wrapSelection = (editor, selection, wrapNum) ->
  selectedText = selection.getText()
  fixedText = selectedText

  newTextList = atom.config.get("wrapperizer.newTextList")
  patternList = atom.config.get("wrapperizer.patternList")
  replaceList = atom.config.get("wrapperizer.replaceList")
  lowerCaseFixedText = atom.config.get("wrapperizer.lowerCaseFixedText")
  upperCaseSelectedText = atom.config.get("wrapperizer.upperCaseSelectedText")

  for ii in [0 .. patternList.length]
    fixedText = fixedText.replace(patternList[ii], replaceList[ii])
  if lowerCaseFixedText = true
    fixedText = fixedText.toLowerCase()
  if upperCaseSelectedText = true
    selectedText = selectedText.toUpperCase()

  newText = newTextList[wrapNum]
  newText = newText.replace("%ST%", selectedText)
  newText = newText.replace("%FT%", fixedText)

  selection.insertText(newText)
