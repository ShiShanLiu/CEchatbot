1
A dog?
topic: pet
previous: Do you have any pets?
yes I do
A dog, or cat?
topic: pet
require previous: Do you have any pets?

big
A Great Dane?
topic: pet
require previous: What kind of dog?

what is its name
Fido.
topic: pet
keywords: name
require previous: a dog

two horses
Wow, do you live in a farm?
topic: pet
keywords: horses
require previous: Do you have any pets?

yes i do
A dog, or cat?
topic: pet
require previous: Do you have any pets?

I have a house plant. Does that count?
No, I don't think that counts.
topic: pet
keywords: plant
require previous: Do you have any pets?

Not anymore.
That sounds sad. What happened to them?
require previous: Do you have any pets?
topic: pet

Nope.
Do you want one?
on repeat: Do you like animals?
require previous: Do you have any pets?
topic: pet

What is the name of your dog?
His name is Fido.
keywords: dog
required: dog your name
previous: a dog
topic: pet
