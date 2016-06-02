# Description:
#   Load a random Ikea Monkey from an array of images.
#   Based on grumpycat me.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot monkey me - Receive a Ikea Monkey
#   hubot monkey bomb N - get N Ikea Monkeys
#
# Author:
#   trey

monkeys = [
#  "http://mlkshk.com/r/MB2P.gif", # Shatner
#  "http://mlkshk.com/r/MA4G.gif", # painting
#  "http://mlkshk.com/r/M7S8.gif", # Bane
#  "http://mlkshk.com/r/M6P6.gif", # taxi
#  "http://mlkshk.com/r/M64Y.gif", # Tenenbaum
#  "http://mlkshk.com/r/M51V.gif", # Carl
  "https://02varvara.files.wordpress.com/2011/08/01-monkey-poo-for-you.jpg",
  "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTDy5c0CexXkKq2SwqakcmvA2RlAgtSL5m3h27i60E6c5RrR8IlPA",
  "https://i.ytimg.com/vi/LTIJZJsLG8o/hqdefault.jpg",
  "https://s-media-cache-ak0.pinimg.com/236x/1e/fa/a2/1efaa2e7892daf3998d8a22956a98639.jpg",
  "https://images-2.discordapp.net/.eJwFwdsNwyAMAMBdGAAwDwNZJkKASCoSo-CqH1V3791XvJ8hNnEwz7UpVc9V6KlyMT25N9mJ-mh5nksWulRmzuW42s1LBcToU4IU0IZoMSpwDp3zQUfvAUzQTlX63INy3Y0G1Ebb3YBxNsnX7OL3B1HFJok.ORKtQOxSxMTS1HtATPWVCcMofrQ.jpg?width=225&height=300",
  "https://i.ytimg.com/vi/42pc1rgiXkM/hqdefault.jpg",
  "http://sillymonkey.weebly.com/uploads/9/2/3/4/923462/2992429.jpg",
  "http://hinck.typepad.com/.a/6a0133f577fba1970b0168e6d305e6970c-pi",
  "http://www.guygray.org/wp-content/uploads/2013/08/animals-monkeys-HD-Wallpapers.jpg",
  "http://static02.mediaite.com/themarysue/uploads//2014/01/monkey.jpg",
  "http://www.wonderslist.com/wp-content/uploads/2014/03/Dusky-Leaf-Monkey.jpg",
  "http://cx.aos.ask.com/question/aq/700px-394px/population-monkeys-planet_20e2f2aa6b79b9ec.jpg",
  "http://2.bp.blogspot.com/-WEgb7GfC3uc/UardnnWZP-I/AAAAAAAAE4E/KN_BerZhVIQ/s1600/funny+Monkey.jpeg",
  "http://static.ddmcdn.com/gif/3-funny-face-monkey.jpg",
  "http://images2.fanpop.com/images/photos/2800000/orange-baby-monkey-monkeys-2816930-408-352.jpg",
  "http://hdwallnpics.com/wp-content/gallery/monkey-images-free/monkeys-monkey-free-178280.jpg",
  "http://voices.nationalgeographic.com/files/2013/01/rhesus-monkey_685_600x450.jpg",
  "http://cdn.zmescience.com/wp-content/uploads/2011/07/capuchin-cringing.jpg",
  "http://static.ddmcdn.com/gif/space-radiation-monkeys-676877-.jpg",
  "http://www-tc.pbs.org/wgbh/nova/next/wp-content/uploads/2013/09/rhesus-monkey-1024x576.jpg",
  
]

module.exports = (robot) ->
  robot.respond /monkey me/i, (msg) ->
    msg.send monkeys[Math.floor(Math.random()*monkeys.length)]

  robot.respond /monkey bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    for i in [1..count] by 1
      msg.send monkeys[Math.floor(Math.random()*monkeys.length)]

  robot.respond /how many monkeys are there/i, (msg) ->
    msg.send "There are #{monkeys.length} grumpycats."
