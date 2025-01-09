---
layout: post
title: "The Joy of Making Something Your Friends Use"
date: 2025-01-08
categories: jekyll update
---

I just had my first taste of making something people other than me actually use outside of work or school. It's been really fun.

## Problem

Me and some friends from middle/high school have an inside joke of sorts where we give each other points if one does something the other considers "foul." Typically how it goes is someone does something the other doesn't like, and the person who didn't like it says "+1" (or 2, or however many points they feel). They then elicit support from other friends and like that, foul sport points are assigned.

I'm not quite sure how it started, but it's been around long enough that people had been discussing keeping some track of these points. I remember once offhand mentioning that it would be cool if it was a Discord bot.

I have a million ideas for things, none of them really ever pan out. But my friends kept bringing this thing up. I had 0 expectations for it whatsoever, and used it as an opportunity to learn Go.

## Product

On a high level this is what the bot does: it has commands where users can create polls against each other mentioning how many points they should get. People vote on the poll, and 24 hours later the result of the poll is shown to everyone. The user has gained however many points the poll specified or nothing happened.

Users can also run a leaderboard command that returns a top 10 list of all users ordered by who has the most points. This leaderboard is different year by year, whoever has the most points for any given year is titled foul sport of the year. We are in talks to have a punishment of some type.

All of this is hosted on the Discord servers most active member.

## Outcomes

People actually use this bot. I guess because the action of accusion someone as foul is already so prevalent this is just an outlet for people to express that more effectively.

There are maybe 10 people who are active in the server (out of maybe 20 who are in it). 16 people have cast votes, 9 create polls, 17 people have gained points and over 100 polls have been created since the start of December.

People ask me for features and bring up ideas for how the bot could work. I respond, it's a real fun cycle. As the creator I want to maximize usage of the bot as much as possible. But as a friend there have been cases where people use this thing real seriously and division and conflict is created. It has been difficult finding the right balance.

Something relatively frustrating that was brought up was people made this whole thing about wanting votes to be anonymous. This required a big departure from the way I used to do things and when it came out and people started using it damn near everyone said they wanted anonimity gone.

I had heard the Ford quote hundreds of time about "If I had asked people what they wanted, they would have said faster horses." This was my first time experiencing it.

What people ask for in a product may not be what they actually want. More effort should be put into finding what the actual problem is. In this case it was having people speak their minds while also being held accountable for their actions. If a user just upvotes every poll that isn't desired. But they shouldn't vote against their belief either. I found a middle ground by hiding votes until after polls expire and only showing them randomly.

## Conclusions

I think this has been a pretty huge learning experience for me. First off, I absolutely adore Go as a language. Second off, building products is really fun. Especially when people use them.

There's something special about building software just for friends and just for an extreme niche use case. I'm excited for a future when making things like this isn't limited to just people who know how to code.

I have 0 plans to scale this past my friend group. But I don't expect to work on it as much as I have in the past. This thing appears to have hit a market saturation of sorts.

Here's the repo if you want to check it out: <https://github.com/mustafa-tariqk/foulbot>
