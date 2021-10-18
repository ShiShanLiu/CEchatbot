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

