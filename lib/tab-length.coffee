module.exports = TabLength =
  activate: (state) ->
    atom.commands.add 'atom-text-editor', "tab-length:tab-length-2", => @setTabLengthTo2()
    atom.commands.add 'atom-text-editor', "tab-length:tab-length-4", => @setTabLengthTo4()
    atom.commands.add 'atom-text-editor', "tab-length:tab-length-8", => @setTabLengthTo8()
    atom.commands.add 'atom-text-editor', "tab-length:reset", => @resetTabLength()

  setTabLengthTo2: ->
    editor = atom.workspace.getActivePaneItem()
    editor.setTabLength(2)

  setTabLengthTo4: ->
    editor = atom.workspace.getActivePaneItem()
    editor.setTabLength(4)

  setTabLengthTo8: ->
    editor = atom.workspace.getActivePaneItem()
    editor.setTabLength(8)

  resetTabLength: ->
    editor = atom.workspace.getActivePaneItem()
    editor.setTabLength(null)
