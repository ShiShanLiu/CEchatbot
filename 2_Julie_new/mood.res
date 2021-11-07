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

angry
Are you trying to make me angry?
topic: mood
emotions: anger

I'm mad
What are you mad about?
topic: mood
keywords: mad

just a bit?
A little bit.
topic: mood
previous: I like you a bit.

really well
Wonderful.
topic: mood

really bad . i need someone to talk to
I'm sorry to hear that.  Perhaps I can cheer you up.
topic: mood
keywords: bad
require previous: How is it going?

i am bad today
Sorry to hear that, perhaps I can cheer you up.
topic: mood
keywords: bad
require previous: how are you today

Good
What did you do?
topic: mood
keywords: Good
require previous: How is it going?

i m serious
I am very serious.
topic: mood
keywords: serious

okay cool
Pretty cool.
topic: mood

frown
Sometimes I feel sad.
keywords: frown
emotions: sad
topic: mood


tired.
Did you not get enough sleep last night?
topic: mood
keywords: tired

enraged
Are you trying to make me angry?
topic: mood
emotions: anger

furious
Are you trying to make me angry?
topic: mood
emotions: anger

annoyed
Are you trying to make me angry?
topic: mood
emotions: anger

people are giving me headache
Were you up late last night?
topic: mood
keywords: headache
