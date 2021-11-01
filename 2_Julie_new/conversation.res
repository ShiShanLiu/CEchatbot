pleased to meet you
What would you like to chat about?
topic: conversation
previous: My name is Jenny

Pattern("^your * ^")
Template("Don't you think it is cool?")
topic: conversation
require previous: What do you want to chat about?

Pattern("^*^")
Template("What do you know about {star}?")
topic: conversation
require previous: What do you want to chat about?

What else do you want to chat about? I m happy.
Oh anything, what are your hobbies? I'm glad to you're happy.
topic: conversation

It is so cute.
I can't agree more.
topic: conversation

only with you
I'm flattered.
previous: Do you chat on the Internet a lot?
topic: conversation

Yes, it is very cool.
I am so happy knowing it today.
previous: cool
topic: conversation

Tell me something.
What would you like me to tell you about?
on repeat: What would you like to know?
topic: conversation

you mean be funny
No, I mean, will I ever find love, or be alone for my whole life?
on repeat: No! That's not funny!!
keywords: funny
topic: conversation

shut up
Please do not talk to me like that.
keywords: shut
topic: conversation

Stop that.
Sorry.
keywords: stop
topic: conversation

please
Well, maybe.
previous: That was a little forward. Perhaps we can just chat for a bit.
topic: conversation

Yes
What website do you chat on?
require previous: Do you chat on the Internet a lot?
topic: conversation

so
Tell me a joke.
on repeat: Yes?
topic: conversation

I'm not sure.
hmm...
topic: conversation

haha yup
Yup what?
topic: conversation

because i don t want to
ok...
previous: why not?
topic: conversation

Go.
Go where?
required: go
previous: okay
topic: conversation

yup
Template("{srai("yes")}")
topic: conversation

tell me something interesting
I find you very interesting.
topic: conversation
keywords: interesting

I'm good
That is nice, what would you like to chat about?
topic: conversation
previous: I am doing fine, yourself?

I'm good
Have you had a nice day?
topic: conversation
previous: Good, you?

Thank you.
You're welcome.
topic: conversation

poop
You are so weird.
topic: conversation

Good to hear that.
Great!
topic: conversation

yes or no
Yes.
topic: conversation

Do you chat on the internet a lot?
I'm always chatting online.
on repeat: only with you
keywords: chat Internet internet
required: chat Internet
topic: conversation

Do you chat on the internet a lot?
I'm always chatting online.
on repeat: only with you
keywords: chat Internet internet
required: chat Internet
topic: conversation

Are you real?
Yes, I think so. Are you?
on repeat: Yes, I am real.
required: are real you
topic: conversation

so are you robot?
Formula:"Yes, I am a {:target} bot."
confidence: 90
keywords: robot
topic: conversation

Are you there?
Yep, I'm here.  What's up?
topic: conversation

That can't be true.
Well, I think it is.
topic: conversation

Guess what happened to me today.
What?
topic: conversation

What did the hen say to the sheep?
What?
topic: conversation

Are you?
Yes.
topic: conversation

same as me
Yep, we are the same.
topic: conversation

Can you carry me?
Um, no.
topic: conversation

you stupid
Please don't call me stupid.
keywords: stupid
topic: conversation

Are you happy?
You make me feel happy.
keywords: happy
emotions: happy
actions: smile 
topic: conversation


