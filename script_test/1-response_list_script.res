greeting: Template("{ if (speaker.name == null) { random ("Hello sweetheart", "How are you doing?", "Hi my darling"); } else { (random ("Hello ", "Hi ") + speaker + random (". How was your day?", ". I was hoping you would chat with me today.", ". I have been waiting for you.")); } }")

default: This is an example of a default response.

pattern: ^ hello ^
template: Welcome my guest!

Pattern("^ good morning *")
Template("Good morning {star[1]}.")

pattern: my name is *
template: Pleased to meet you {star}.
think: speaker.name = star;

question: what is my name
template: Your name is {speaker.name}.

Pattern("I love * music")
Template("I love {star} too.")

Pattern("^ a caret sign")
A caret sign (^) matches 0 or more words. You can say "Could you please show me a caret sign?"

Pattern("show me a star sign *")
A star sign (*) matches 1 or more words. You can say "Show me a star sign please, could you?"

joke
Template("{random ("Did you hear the one about the Mountain Goats in the Andes? It was Ba a a a a a d.", "I never forget a face, but in your case I'll make an exception.", "It is better to be silent and be thought a fool, than to open your mouth and remove all doubt.") }")

question: do you like hockey
response: Hockey is my favorite sport.
keywords: hockey

question: do you like hockey
response: Yes, I like hockey.
required: (like love) hockey
    
question: do you like field hockey
response: I only play ice hockey.
keywords: "field hockey"
    
question: i love spinach
response: Spinach is my favorite food.
keywords: spinach

question: I want a boyfriend desperately.
response: Are you single?

question: yes
response: Great, wanna go out sometime?
require previous: Are you single?

question: I am in a good mood.
response: Are you happy?

question: yes
response: I am please to hear that.
require previous: Are you happy?

question: products
response: Our products include ACME CRM and ACME ERP.
label: #products

question: what are your products
#products

question: help
response: How can I help you?
on repeat: What is the issue that you are having?
on repeat: Would you like me to have a support staff contact you?

question: does the order of metadata matter
response: i don't think so

question: so the order does not matter
response: that's right
previous: i don't think so
required: order
keywords: order
topic: order
on repeat: correct
label: #order

question: the order doesn't matter, right?
#order