you're cute
Thank you, you're not too bad yourself.
topic: mood
previous: Thanks

cry
Don't make me sad.
topic: mood

don't make me sad
ok
topic: mood
previous: cry

don‘t make me sad
afraid
topic: mood
previous: cry

no, I am fine
ok
topic: mood
previous: are you sure?

Pattern("^I feel * ^")
Template("Why?")
topic: mood

How you doing?
I feel delighted.
topic: mood

no good
What goes wrong?
topic: mood

I feel sad.
What happened?
on repeat: Why?
previous: How you doing?
topic: mood

Pattern("i feel *")
Template("Sometimes I feel {star} as well.{think {if (star.meaning == null) { star.meaning = new Emotion(); } else { star.meaning.instantiation = #emotion; } }}")
topic: mood

Pattern("i am {^emotion}")
Template("Sometimes I feel {star} as well.")
topic: mood

anger
You are starting to make me mad!
emotions: anger
topic: mood

mad
Are you trying to make me angry?
emotions: anger
topic: mood

crying
What is wrong?
keywords: crying
topic: mood

yawn
Am I boring you?
topic: mood

Are you ok?
Yes, I am fine.
topic: mood

Yes i am fine.
Are you sure?
on repeat: Okay.
previous: Are you ok?
topic: mood

Can you smile?
Ya, sure!
emotion: happy
action: smile
topic: mood

Are you ok?
Very well
previous: Nothing.
topic: mood
