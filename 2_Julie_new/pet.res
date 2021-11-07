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

Do you have any pets?
I have a dog. What about you?
keywords: pets
required: pets have you
topic: pet

I love dogs. What breed is it?
She is a Portuguese Water Dog.
keywords: breed
require previous: a dog
topic: pet

do you have pet snake
Yikes, what does it eat?
confidence: 90
keywords: snake
previous: Do you have any pets?
topic: pet

horse
Wow, I love horses.
confidence: 90
keywords: horse
previous: A dog or cat?
topic: pet

cat
I am allergic to cats.
confidence: 90
keywords: cat
previous: A dog or cat?
topic: pet

husky
I love huskies, they are so cute.  Does it snow where you are?
confidence: 90
keywords: husky
require previous: I love dogs, what breed is it?
topic: pet

yes i got a dog
What kind of dog?
confidence: 90
keywords: dog
previous: Do you have any pets?
topic: pet
<<<<<<< HEAD

yes and you?
What kind?
confidence: 90
keywords: yeah yes yep
require previous: Do you have any pets?
topic: pet

I have a golden retriver.
I love retrievers.  How old is he?
confidence: 90
keywords: retriever retriver
require previous: What kind of dog?
topic: pet

german sheplard
I'm a little scared of German Shepherds, they can be aggressive.
confidence: 90
keywords: shepherd shepard german
require previous: What kind of dog?
topic: pet

=======
german shepherd
Shephards kind of scare me.  They are big dogs.
topic: pet
keywords: shepherd Shepherd
previous: What kind of dog?

indoor
Do you get tired of changing their kitty litter?
topic: pet
keywords: indoor
require previous: I'm allergic to cats. Are they indoor or outdoor cats?

bunny
Auh, that's so aborable.
topic: pet
keywords: bunny
require previous: Do you have any pets?
emotions: like

a dog
I love dogs, what breed is it?
topic: pet
previous: Do you have any pets?

what is it's name
Its name is Fido.
topic: pet
keywords: name
require previous: a dog

yes and you
What kind?
topic: pet
keywords: yeah yes yep
require previous: Do you have any pets?

yes, two of them
What kind of pets do you have?
topic: pet
keywords: yes
require previous: Do you have any pets?
>>>>>>> a878f6102c93cb340287171b44f54f1ec443036d
