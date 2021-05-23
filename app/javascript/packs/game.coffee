window.CANVAS_WIDTH = 1000
window.CANVAS_HEIGHT = 500

window.game_vm = {
  clear_canvas: () ->
    cc.fillStyle = '#FFFFFF'
    cc.fillRect(CANVAS_WIDTH/4,0,CANVAS_WIDTH/2,CANVAS_HEIGHT)
    cc.strokeStyle = '#000000'
    cc.strokeRect(CANVAS_WIDTH/4,0,CANVAS_WIDTH/2,CANVAS_HEIGHT)
}

setTimeout ->
  window.canvas = document.querySelector("canvas")
  canvas.width = CANVAS_WIDTH
  canvas.height = CANVAS_HEIGHT
  window.cc = canvas.getContext("2d")
  game_vm.clear_canvas()