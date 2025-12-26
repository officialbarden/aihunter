# // Place the block in mainhand or offhand..
setblock 0 300 0 barrel
# the /swing command will come here..
# // Mainhand block priority over offhand..
function ai:zprivate/entity/actions/placing/hand_check/init
setblock 0 300 0 air
