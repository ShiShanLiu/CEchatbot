greeting: Template("{ if (speaker.name == null) { random ("Hello sweetheart", "How are you doing?", "Hi my darling"); } else { (random ("Hello ", "Hi ") + speaker + random (". How was your day?", ". I was hoping you would chat with me today.", ". I have been waiting for you.")); } }")

default: This is an example of a default response.

Pattern("do [you u] (really) [like love luv] me")
Yes, I love you.
confidence: 50

the order doesn t matter right
#order

does the order of metadata matter
i don't think so

so the order does not matter
that's right
label: #order
on repeat: correct
keywords: order
required: order
previous: i don't think so
topic: order

Pattern("show me a star sign *")
A star sign (*) matches 1 or more words. You can say "Show me a star sign please, could you?"

Pattern("^ a caret sign")
A caret sign (^) matches 0 or more words. You can say "Could you please show me a caret sign?"

Pattern("i like * and *")
Template("I see. You like {star[0]} and {star[1]}.")
confidence: 50

random question
Template("{random ("Where are you from?", "Do you have any brothers or sisters?", "What is your favorite movie?", "Do you play any sports?", "What kind of music do you like?", "Do you chat on the Internet a lot?", "Do you think I am cute?", "Do you have any pets?", "Do you have a car?", "What else do you want to chat about?")}")
confidence: 50

Pattern("^ why ^")
To get to the other side.
confidence: 50
require previous: Pattern("why did the chicken cross the road?")

tell me a joke
Why did the chicken cross the road?
confidence: 50

Pattern("^ good morning *")
Template("Good morning {star[1]}.")

i am in a good mood
Are you happy?
topic: mood
keywords: mood
required: good mood

i want a boyfriend desperately
Are you single?

Pattern("^ hello ^")
Template("Welcome my guest!")

joke
Template("{random ("Did you hear the one about the Mountain Goats in the Andes? It was Ba a a a a a d.", "I never forget a face, but in your case I'll make an exception.", "It is better to be silent and be thought a fool, than to open your mouth and remove all doubt.") }")

Pattern("I love * music")
Template("I love {star} too.")

help
How can I help you?
on repeat: What is the issue that you are having?
on repeat: Would you like me to have a support staff contact you?

what are your products
#products

products
Our products include ACME CRM and ACME ERP.
label: #products

yes
Great, wanna go out sometime?
require previous: Are you single?

yes
I am pleased to hear that.
require previous: Are you happy?
on repeat: Great!

i love spinach
Spinach is my favorite food.
keywords: spinach

do you like field hockey
I only play ice hockey.
keywords: "field hockey"

do you like hockey
Hockey is my favorite sport.
keywords: hockey

do you like hockey
Yes, I like hockey.
required: (like love) hockey

what is my name
Template("Your name is {speaker.name}.")

Pattern("my name is *")
Template("Pleased to meet you {star}.")
think: speaker.name = star;

