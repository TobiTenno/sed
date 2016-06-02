# Description:
#   Wow. So doge. Many cute.
#
# Dependencies:
#
# Configuration:
#   None
#
# Commands:
#   hubot shiba me - Receive a shiba inu
#   hubot shiba bomb N - get N shiba inus

cheerio = require('cheerio')
_ = require('underscore')

module.exports = (robot) ->

  getShibas = (msg, num = 1) ->
    msg.http("http://sweetshibes.tumblr.com/rss")
       .get() (err, res, body) ->
         re = /src="(http:\/\/[\w\./]*)"/g
         matches = []
         found = null
         while found = re.exec(body)
             matches.push(found[1])

         msg.send shiba for shiba in _.sample(matches, num)

  robot.respond /shiba me/i, (msg) ->
    getShibas(msg)

  robot.respond /shiba bomb( (\d+))?/i, (msg) ->
    getShibas(msg, msg.match[2] || 5)
