use context starter2024
import image as I
import reactors as R

data player-posn:
  | posn(x :: Number, y :: Number)
end


# Dimentions

scene-height = 800
scene-width = 800
player-size = 20
player-step = 20

# Initial state of the game

init-x = (scene-height / 2)
init-y = (scene-height / 2)
init-posn = posn(init-x, init-y)

# Scene setup
blank-scene = I.rectangle(scene-width, scene-height, "solid", "black")
block-1 = I.rectangle(player-size, 100, 'solid', 'red')
block-1-s = I.rectangle(player-size, 80, 'solid', 'red')
block-2 = I.rectangle(100, player-size, 'solid', 'red')
block-2-s = I.rectangle(160, player-size, 'solid', 'red')
block-3-go = I.square(player-size, 'solid', 'green')
block-3-go-s = I.rectangle(30, player-size, 'solid', 'green')
block-3 = I.square(player-size, 'solid', 'red')
block-4 = I.rectangle(player-size, 60, 'solid', 'red')
block-5 = I.rectangle(220, player-size, 'solid', 'red')
block-5-s = I.rectangle(240, player-size, 'solid', 'red')
block-5-vert = I.rectangle(player-size, 220, 'solid', 'red')
block-5-vert-s = I.rectangle(player-size, 160, 'solid', 'red')
block-6 = I.rectangle(player-size, 120, 'solid', 'red')
block-7 = I.rectangle(300, player-size, 'solid', 'red')
block-8 = I.rectangle(620, player-size + 20, 'solid', 'red')
block-9 = I.rectangle(player-size + 10, 740, 'solid', 'red')
block-10 = I.rectangle(player-size + 10, 900, 'solid', 'red')
block-police = I.square(player-size, 'solid', 'blue')

destination = I.square(40, 'solid', 'green')

background = I.place-image(block-1, init-x + 40, init-y, 
  I.place-image(block-2, init-x, init-y + 40,
    I.place-image(block-3-go, init-x - 40, init-y - 20,
      I.place-image(block-3-go-s, init-x - 315, init-y + 280,
        I.place-image(block-3-go, init-x - 40, init-y - 360,
          I.place-image(block-3-go, init-x - 40, init-y - 340,
            I.place-image(block-3-go, init-x - 280, init-y - 120,
              I.place-image(block-3-go, init-x - 260, init-y - 120,
                I.place-image(block-police, init-x - 240, init-y - 120,
                  I.place-image(block-police, init-x - 220, init-y - 120,
                    I.place-image(block-police, init-x - 300, init-y - 120,
                      I.place-image(block-police, init-x - 320, init-y - 360,
                        I.place-image(block-4, init-x - 40, init-y,
                          I.place-image(block-2, init-x, init-y - 40,
                            I.place-image(destination, init-x - 350, init-y - 350,
                              I.place-image(block-2, init-x - 100, init-y - 40,
                                I.place-image(block-2, init-x - 100, init-y,
                                  I.place-image(block-1, init-x - 180, init-y,
                                    I.place-image(block-1, init-x - 180, init-y,
                                      I.place-image(block-3, init-x - 160, init-y - 40,
                                        I.place-image(block-2, init-x - 140, init-y + 40,
                                          I.place-image(block-1, init-x - 100, init-y + 80,
                                            I.place-image(block-1, init-x + 260, init-y + 40,
                                              I.place-image(block-1-s, init-x + 220, init-y + 50,
                                                I.place-image(block-2, init-x + 160, init-y - 20,
                                                  I.place-image(block-2-s, init-x + 150, init-y + 20,
                                                    I.place-image(block-1, init-x - 60, init-y + 60, 
                                                      I.place-image(block-2, init-x - 60, init-y + 140,
                                                        I.place-image(block-2, init-x - 20, init-y + 100,
                                                          I.place-image(block-1, init-x + 260, init-y + 100,
                                                            I.place-image(block-2, init-x + 220, init-y - 20,
                                                              I.place-image(block-2, init-x + 220, init-y + 140,
                                                                I.place-image(block-5, init-x + 80, init-y + 140,
                                                                  I.place-image(block-5-s, init-x - 220, init-y - 340, 
                                                                    I.place-image(block-5, init-x + 120, init-y + 100, 
                                                                      I.place-image(block-5-vert, init-x + 80, init-y - 100,
                                                                        I.place-image(block-5-vert-s, init-x + 120, init-y - 100,
                                                                          I.place-image(block-5, init-x + 180, init-y - 220,
                                                                            I.place-image(block-5, init-x + 220, init-y - 180,
                                                                              I.place-image(block-6, init-x + 280, init-y - 290,
                                                                                I.place-image(block-7, init-x + 140, init-y - 340,
                                                                                  I.place-image(rotate(45, block-7), init-x - 110, init-y - 237,
                                                                                    I.place-image(rotate(45, block-7), init-x - 200, init-y - 237,
                                                                                      I.place-image(block-8, init-x - 20, init-y - 390,
                                                                                        I.place-image(block-9, init-x - 315, init-y + 30,
                                                                                          I.place-image(block-10, init-x - 385, init-y + 10,
                                                                                            I.place-image(block-10, init-x - 200, init-y + 305,
                                                                                              I.place-image(block-5-vert, init-x + 320, init-y - 300, blank-scene))))))))))))))))))))))))))))))))))))))))))))))))

background-blank = I.place-image(destination, init-x - 350, init-y - 350, blank-scene)

# Player object
fun place-player(p :: player-posn) -> Image:
  I.put-image(square(player-size, 'solid', 'white'),
    p.x, p.y, background)
end

fun move-player(p :: player-posn, key):
  ask:
    | key == 'up'   then: posn(p.x, p.y + player-step)
    | key == 'down' then: posn(p.x, p.y - player-step)
    | key == 'right'then: posn(p.x + player-step, p.y)
    | key == 'left' then: posn(p.x - player-step, p.y)
    | otherwise: p
  end
end

check:
  move-player(init-posn, 'up') is posn(init-x, init-y + player-step)
  move-player(init-posn, 'right') is posn(init-x + player-step, init-y)
end

fun pos-checker(p :: player-posn):
  if (p.x == (init-x)) and (p.y == (init-y)):
    false
  else if (p.x == (init-x + 20)) and (p.y == (init-y)):
    false
  else if (p.x == (init-x + 20)) and (p.y == (init-y + 20)):
    false
  else if (p.x == (init-x)) and (p.y == (init-y + 20)):
    false
  else if (p.x == (init-x - 20)) and (p.y == (init-y)):
    false
  else if (p.x == (init-x)) and (p.y == (init-y - 20)):
    false
  else if (p.x == (init-x - 20)) and (p.y == (init-y - 20)):
    false
  else if (p.x == (init-x + 20)) and (p.y == (init-y - 20)):
    false
  else if (p.x == (init-x - 20)) and (p.y == (init-y + 20)):
    false
  else if (p.x == (init-x - 40)) and (p.y == (init-y + 20)):
    false
  else if (p.x == (init-x - 60)) and (p.y == (init-y + 20)):
    false
  else if (p.x == (init-x - 80)) and (p.y == (init-y + 20)):
    false
  else if (p.x == (init-x - 100)) and (p.y == (init-y + 20)):
    false
  else if (p.x == (init-x - 120)) and (p.y == (init-y + 20)):
    false
  else if (p.x == (init-x - 140)) and (p.y == (init-y + 20)):
    false
  else if (p.x == (init-x - 160)) and (p.y == (init-y + 20)):
    false
  else if (p.x == (init-x - 160)) and (p.y == (init-y)):
    false
  else if (p.x == (init-x - 160)) and (p.y == (init-y - 20)):
    false
  else if (p.x == (init-x - 140)) and (p.y == (init-y - 20)):
    false
  else if (p.x == (init-x - 120)) and (p.y == (init-y - 20)):
    false
  else if (p.x == (init-x - 100)) and (p.y == (init-y - 20)):
    false
  else if (p.x == (init-x - 80)) and (p.y == (init-y - 20)):
    false
  else if (p.x == (init-x - 80)) and (p.y == (init-y - 40)):
    false
  else if (p.x == (init-x - 80)) and (p.y == (init-y - 60)):
    false
  else if (p.x == (init-x - 80)) and (p.y == (init-y - 80)):
    false
  else if (p.x == (init-x - 80)) and (p.y == (init-y - 100)):
    false
  else if (p.x == (init-x - 80)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x - 60)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x - 40)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x - 20)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 20)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 40)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 60)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 80)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 100)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 120)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 140)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 160)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 180)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 200)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 220)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 240)) and (p.y == (init-y - 120)):
    false
  else if (p.x == (init-x + 240)) and (p.y > (init-y - 120)) and (p.y < (init-y + 20)):
    false
  else if (p.x <= (init-x + 220)) and (p.x > (init-x + 80)) and (p.y == (init-y)):
    false
  else if (p.x == (init-x + 100)) and (p.y > (init-y)) and (p.y <= (init-y + 200)):
    false
  else if (p.x > (init-x + 100)) and (p.x <= (init-x + 300)) and (p.y == (init-y + 200)):
    false
  else if (p.x == (init-x + 300)) and (p.y > (init-y + 200)) and (p.y <= (init-y + 360)):
    false
  else if (p.x <= (init-x + 300)) and (p.x > (init-x - 300)) and (p.y == (init-y + 360)):
    false
  else if (p.x == (init-x - 40)) and (p.y == (init-y + 340)):
    false
  else if (p.x == (init-x - 60)) and (p.y == (init-y + 340)):
    false
  else if (p.x == (init-x - 60)) and (p.y == (init-y + 320)):
    false
  else if (p.x == (init-x - 80)) and (p.y == (init-y + 320)):
    false
  else if (p.x == (init-x - 80)) and (p.y == (init-y + 300)):
    false
  else if (p.x == (init-x - 100)) and (p.y == (init-y + 300)):
    false
  else if (p.x == (init-x - 100)) and (p.y == (init-y + 280)):
    false
  else if (p.x == (init-x - 120)) and (p.y == (init-y + 280)):
    false
  else if (p.x == (init-x - 120)) and (p.y == (init-y + 260)):
    false
  else if (p.x == (init-x - 140)) and (p.y == (init-y + 260)):
    false
  else if (p.x == (init-x - 140)) and (p.y == (init-y + 240)):
    false
  else if (p.x == (init-x - 160)) and (p.y == (init-y + 240)):
    false
  else if (p.x == (init-x - 160)) and (p.y == (init-y + 220)):
    false
  else if (p.x == (init-x - 180)) and (p.y == (init-y + 220)):
    false
  else if (p.x == (init-x - 180)) and (p.y == (init-y + 200)):
    false
  else if (p.x == (init-x - 200)) and (p.y == (init-y + 200)):
    false
  else if (p.x == (init-x - 200)) and (p.y == (init-y + 180)):
    false
  else if (p.x == (init-x - 220)) and (p.y == (init-y + 180)):
    false
  else if (p.x == (init-x - 220)) and (p.y == (init-y + 160)):
    false
  else if (p.x == (init-x - 240)) and (p.y == (init-y + 160)):
    false
  else if (p.x == (init-x - 240)) and (p.y == (init-y + 140)):
    false
  else if (p.x == (init-x - 260)) and (p.y == (init-y + 140)):
    false
  else if (p.x == (init-x - 260)) and (p.y == (init-y + 120)):
    false
  else if (p.x == (init-x - 280)) and (p.y == (init-y + 120)):
    false
  else if (p.x == (init-x - 280)) and (p.y <= (init-y + 120)) and (p.y >= (init-y - 280)):
    false
  else if (p.x <= (init-x - 300)) and (p.x > (init-x - 380)) and (p.y == (init-y - 280)):
    false
  else if (p.x == (init-x - 360)) and (p.y <= (init-y + 320)) and (p.y >= (init-y - 280)):
    false
  else if (p.x == (init-x - 340)) and (p.y <= (init-y + 320)) and (p.y >= (init-y - 280)):
    false
  else:
    true
  end
end

# Define the Game Over screen
fun game-over-screen(p :: player-posn) -> Image:
  I.place-image(
    I.text("GAME OVER", 50, "red"),
    scene-width / 2, scene-height / 2,
    blank-scene
  )
end

# Update game-end to return a tuple with the state
fun game-end(p :: player-posn):
  pos-checker(p)
end

# Reactor with Game Over handling
anim = reactor:
  title: "Prison Escape",
  init: init-posn,
  on-key: move-player,
  stop-when: game-end,
  to-draw: lam(p):
    if game-end(p):
      game-over-screen(p)
    else:
      place-player(p)
    end
    end
end

R.interact(anim)
