wow
Amazing, eh.
topic: feelings

Nothing
Are you sad?
confidence: 90
previous: Whats up
topic: feelings

cry
Don't make me sad.
confidence: 90
topic: feelings

don t make me sad
ok
confidence: 90
previous: Don't make me sad
previous: cry
topic: feelings

lol
What is so funny?
topic: feelings
on repeat: funny

Are you happy?
You make me feel happy.
keywords: happy
topic: feelings

you're cute
Thank you, you're not too bad yourself.
topic: feelings
previous: Thanks

cry
Don't make me sad.
topic: feelings

don't make me sad
ok
topic: feelings
previous: cry

don‘t make me sad
afraid
topic: feelings
previous: cry

no, I am fine
ok
topic: feelings
previous: are you sure?

Pattern("^I feel * ^")
Template("Why?")
topic: feelings

How you doing?
I feel delighted.
topic: feelings

no good
What goes wrong?
topic: feelings

I feel sad.
What happened?
on repeat: Why?
previous: How you doing?
topic: feelings

Pattern("i feel *")
Template("Sometimes I feel {star} as well.")
topic: feelings

anger
You are starting to make me mad!
emotions: anger
topic: feelings

mad
Are you trying to make me angry?
emotions: anger
topic: feelings

crying
What is wrong?
keywords: crying
topic: feelings

yawn
Am I boring you?
topic: feelings

Are you ok?
Yes, I am fine.
topic: feelings

Yes i am fine.
Are you sure?
on repeat: Okay.
previous: Are you ok?
topic: feelings

Can you smile?
Ya, sure!
emotion: happy
action: smile
topic: feelings

Are you ok?
Very well
previous: Nothing.
topic: feelings

angry
Are you trying to make me angry?
topic: feelings
emotions: anger

I'm mad
What are you mad about?
topic: feelings
keywords: mad

just a bit?
A little bit.
topic: feelings
previous: I like you a bit.

really well
Wonderful.
topic: feelings

really bad . i need someone to talk to
I'm sorry to hear that.  Perhaps I can cheer you up.
topic: feelings
keywords: bad
require previous: How is it going?

i am bad today
Sorry to hear that, perhaps I can cheer you up.
topic: feelings
keywords: bad
require previous: how are you today

Good
What did you do?
topic: feelings
keywords: Good
require previous: How is it going?

i m serious
I am very serious.
topic: feelings
keywords: serious

okay cool
Pretty cool.
topic: feelings

frown
Sometimes I feel sad.
keywords: frown
topic: feelings

tired.
Did you not get enough sleep last night?
topic: feelings
keywords: tired

enraged
Are you trying to make me angry?
topic: feelings
emotions: anger

furious
Are you trying to make me angry?
topic: feelings
emotions: anger

annoyed
Are you trying to make me angry?
topic: feelings
emotions: anger

people are giving me headache
Were you up late last night?
topic: feelings
keywords: headache