---
layout: post
title: Friction Log VectorShift
date: 2024-05-11
categories: jekyll update
---
This'll be my first ever friction log. I'll be doing these for companies I've applied to/want to apply to. Tomorrow I'll be working on a project that I think will be a take home that the company may want to assign me. This is gonna happen every Saturday and Sunday until I land a job.

VectorShift is first up, advertise themselves as follows, and have a little video to show what's up. The video is short, 80 seconds and gets to the point with what the tool can do, let's jump into it and make something!
![image](/assets/Screenshot_2024-05-11_at_4.12.21_PM.png)

My goal will be to create a resume bot that can look at a job posting, and optimize my resume for it. Clicking the "Get started" button.

![image](/assets/Screenshot_2024-05-11_at_4.17.44_PM.png)
Auth is simple enough, let's go with signing in with a google account.

![image](/assets/Screenshot_2024-05-11_at_4.18.27_PM.png)

At initial glance on the homepage of the website (literally the very top and nothing else) no mention of an SDK, but scroll down and it's there. This is neat, so I can export no-code diagrams into Python that I can run from within my app if I want to. Neat! But I'm going to focus on just making my resume bot. Let's click on No-Code UI.

![image](/assets/Screenshot_2024-05-11_at_4.21.34_PM.png)

The Document Search Example looks like a good start for what I want to accomplish, the description might seem to put someone off who's not a programmer though. Feel like getting the point across directly by saying "Allows you to ask a question about a document you upload" would be more clear than including the User_Question and Document variables.

Let's try it!

![image](/assets/Screenshot_2024-05-11_at_4.24.42_PM.png)
Filled in the inputs, simple stuff. Let's see what the output will look like.


![image](/assets/Screenshot_2024-05-11_at_4.26.29_PM.png)8.5 is not too bad, I like that it gives me some feedback but I would like it to be specific and cite specific parts of the resume it feels are weak. Let's learn how this was built and see if we can improve upon it. After all, this is just some starter template.

![image](/assets/Screenshot_2024-05-11_at_4.27.18_PM.png)
A lot going on here, a little intimidated, but I see some description tags in yellow which look helpful.


Starting at the left. I'm seeing how things are explained and it's making mostly sense.
![image](/assets/Screenshot_2024-05-11_at_4.33.47_PM.png)

Moving right. Things look super simple still, drag and drop stuff. How hard can this be? 
![image](/assets/Screenshot_2024-05-11_at_4.34.50_PM.png)

Now that that's done, let's keep going.
![image](/assets/Screenshot_2024-05-11_at_4.35.40_PM.png)
And we're at pretty much a repeat of that last one. I guess it's neat that we get to try ones we didn't before, but there's also the back button for that, which is missing from this slide.

![image](/assets/Screenshot_2024-05-11_at_4.59.25_PM.png)

Alrighty, neat that I've learnt this stuff. Let's finish up.

![image](/assets/Screenshot_2024-05-11_at_5.01.22_PM.png)
NOOOOO I DON'T WANNA MAKE A USERNAME MAN JUST SET SOME ID LINKED TO MY EMAIL. Whatever random username going in. Maybe this is because they have some marketplace thing. But right now, I don't care about that I just wanna get started with making my own tool.

![image](/assets/Screenshot_2024-05-11_at_5.03.04_PM.png)
We're on our own now, left to our own devices. I see a create pipeline button that I'm probably gonna press, and some examples to help people gather some inspiration and get started. Neat, love that. Here's a question though, what's on the left sidebar? Do I have to concern myself with this? I'm going to ignore it.

![image](/assets/Screenshot_2024-05-11_at_5.05.03_PM.png)
Once again we are on our own. An entirely empty canvas looks a little intimidating. Of course I could have gotten started with some existing template and start editing, but I wanna do this from scratch. 90% of the stuff I read from the starting template is already out of my head. Would love if there was a little tutorial here.


![image](/assets/Screenshot_2024-05-11_at_5.33.20_PM.png)
Let's start simple with 2 inputs, I need the resume to be uploaded as a file, and the job posting website. The type inputs are just 3, which seems super limiting. I don't want the LLM to know the url, I want the actual contents of the page to be filled in, let's look into "Data Loaders" up top to figure this out.

![image](/assets/Screenshot_2024-05-11_at_5.35.11_PM.png)
Sweet, I see URL, I also see file. Let's drag and drop both.

![image](/assets/Screenshot_2024-05-11_at_5.36.38_PM.png)
Ok so I can point the job posting input to the url loader, but I'm not sure it's getting the input properly, I try to set it to the variable thing like was shown in the start, but it looks like it's not working since it's not changing colors or anything. I would love for you not to be able to fill url if a text input is given, or some type of indication that the input is working properly because right now I don't think this is enough.

Onto the files, The File element has no inputs. I guess I get to skip it. What would be much, much clearer in my opinion was if the input and data loaders were merged into a singular input dropdown, that way I don't have to make a new node and worry about messing stuff up. I'm guessing I get to feed the info into the LLM next, let's do that.

![image](/assets/Screenshot_2024-05-11_at_5.42.22_PM.png)
Going with OpenAI since it's popular, but I'd love if there was some information here to help me choose. E.g. prices, speed, any token limits, scorings of some sort. If someone knew nothing about all this stuff they could use the wrong tool for the job.

I spent the next minutes trying to link the resume to the prompt and getting frustrated about why they both weren't linking in. I had to go back to my screenshots to find that you have to set variables in the prompt and link to those instead. I feel like that type of information could be really useful here. A newbie may also struggle with what a system prompt is, having greyed out explanations instead of empty text boxes describing what to put in could be useful. On top of that, some type of way to find if your prompts are any good would be useful. Good prompts make models SOTA at different tasks. 

Last up is just to drag it to output, let's see what it looks like now.
![image](/assets/Screenshot_2024-05-11_at_5.48.14_PM.png)

I accidentally clicked a deploy pipeline button and it says my pipeline is now deployed. Deployed where? is it public? I'm very confused by this. Let's just click run pipeline and skip worrying about that.

![image](/assets/Screenshot_2024-05-11_at_5.50.12_PM.png)
I'm liking how simple this is. Matches up with my diagram in terms of inputs and outputs. No surprises. Let's fill inputs and hit run!

The output is kinda trash ngl. Barely changes up the resume and when it does it hallucinates things. I am not part of an Association for Computing Machinery. But I guess I built it, so it being trash is on me. I'd also love for it to be a pdf that's generated so I don't have to edit my own one, if I uploaded a pdf, and a job description, and got a pdf back to upload for the job that would be a lot better than me having to manually do it. And since the responses aren't that good anyways. I'm not going to bother with it.

Perhaps there is some cracked version of this in the marketplace, let's check that out.
![image](/assets/Screenshot_2024-05-11_at_5.56.32_PM.png)
I see a recruiting tag, let's peep it. And it's empty, nothing to show here. Even if I sort by new or by top. This really sucks, and at this point I'd probably give up if I was a newbie. What I personally would do would be expand the heck out of this thing and fill it with steps to go complete vs all at once.

Now I know I do sound like a bit of a hater right now, but this is actually really awesome. For me personally, I'd use it to build MVPs of AI apps I'd want to expand upon later. Beats having to code it all from scratch right away. Now that I have had some time with it I get how it works and can imagine solutions to problems I may run into just by expanding out the pipeline I made.

Draft 1 complete, time to edit this. 

Ok on second note, it's 12:12 and I set a commitment to be in bed by 11. So how about I just post this as a really rough initial draft and commit to improving in future releases.
