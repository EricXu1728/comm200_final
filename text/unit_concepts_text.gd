extends Resource

@export var unlocks : Resource
@export var textList := ["For the Unit Concepts, I will be analyzing GamerGate",
	"*",
	"To set the scene there are roughly 3 circles of people that are important. Feminist groups, anti-social justice groups, and the average gaming space.",
	"*",
	"At the time feminist and social justice ideology largely stuck to platforms such as tumblr or twitter. These groups were not yet largely accepted into the public gaming space.",
	"*",
	"Anti-Social justice groups largely stuck to online platforms such as 4chan, Reddit, and most importantly Youtube.",
	"*",
	"The youtube space is also where most general audiences stayed",
	"GamerGate sort of started in 2013. I say sort of because there is a lot of conflicting information.",
	"Proponents of gamergate claim that the movement started to counteract what they believed to be a “radical” feminist movement or to critique gaming journalism which was supposedly corrupt.",
	"*",
	"Some people trace this back to Anita Sarkeesian, a youtuber who started in 2009 and did feminist analysis of games. She was a figurehead of the feminist movement for games and her message did start to affect how some games were made.",
	"*",
	"Her overall goal was spreading the idea that games have sexist themes that should be resolved.",
	#Games have sexist themes
	"Unfortunately being the figurehead of a movement led to harassment including the sexual harassment, leaking of personal information, identification, and bomb threats.",
	# “games are sexist” -> “gamers are sexist”
	"*",
	"This hate was in part of her message being represented in different rhetorical ecologies. This message made sense to people and groups already accepting of groups, but as the message moved from space to space it shifted.",
	#Remember this theme of passing around ideas through different spaces and rhetorical ecologies for later
	"(This game of telephone becomes a common pattern later on.)",
	"*",
	"While these may contain some element of truth to them, it is more common knowledge that the movement only really started to officially start in August 2014 when Zoe Quinn, the creator of “Depression Quest” a text based game, was accused of manipulating reviews.",
	#show image
	"The game, which came out in 2013, itself was well reviewed by critics, but was controversial because it bordered on what a game was. Some people didn’t even consider it a game because it was just text with choices.",
	"This boiled over in August 2014 when an unknown person, later revealed to be Zoe’s former boyfriend, Eron Gjoni, accused her of sleeping with other people, one of them being a Kotaku, a gaming newsite, journalist, Nathan Grayson.",
	"This led to people accusing Zoe of exchanging favors for positive reviews for her game.", 
	"Which led to a lot of people questioning the ethics of gaming journalism in the public sphere.",
	"This was despite Nathan Grayson not mentioning Zoe’s games in his work at all.",
	
	"But this reveal didn’t solve anything. Kotaku was an already controversial news site for being one of few openly left leaning gaming platforms/spaces.",
	"As the GamerGate was already against a group they disliked, Anti-social justice groups quickly jumped on the movement.",
	"Anti-social justice groups were able to slide their distaste for left-leaning work into the public sphere through the public movement.",
	"Suddenly, this sphere and the public sphere had a much larger shared space and discussion because of this movement, resulting in a change in the movement itself and the public sphere",
	"*",
	"The public movement which started as a drama between a couple, spread and became about journalism. Once GamerGate started, the anti-social justice groups shifted the movement’s goal to also rally against social justice.",
	"As the GamerGate movement was adopted and passed around these spaces, the movement shifted its purpose.",
	#“Story about a popular and controversial figure cheating” -> “Journalists are corrupt” -> “Wokeness bad.” 
	"Intentionally or unintentionally GamerGate became an inlet for people to join the alt right movement.",

	"*",
	"As mentioned earlier, the anti-social justice circle was more closely connected to the general public, unlike the feminist circle.",
	"As such, general audiences would mostly hear of feminist ideology from the anti-sj group",
	"Ideas that made sense in feminist spaces with the right rhetorical ecology were viewed as something rappelling when brought to the general public space through what the anti-social justice groups gave them.",
	"Because a good chunk of the population heard feminist ideas through the lens/ecology of those against it, it encouraged them to stand against social justice.",
	"As such gamer gate is an excellent example of how ideas and movements are affected as they pass through different spaces and ecologies",
	"*",
	"You got the RED KEY",
	#“Gamergate is sexist” -> “they hate people who are trying to question them”
	""

]

var index = 0
var unitSprite := preload("res://images/Sprite3.png")
var unit2D : Sprite2D

var picTscn :=load("res://tscns/filteredImage.tscn")
var picture =picTscn.instantiate()
var anita := load("res://images/4513.webp")
var zoe := load("res://images/zoe.PNG")

var new_label : Label

var key := load("res://images/keys.png")


func event(caller : Node2D):
	print("index ", index)
	
	
	if(index == 0):
		unit2D = Sprite2D.new()
		#unit2D.set_hframes(2)
		unit2D.scale.x = 2
		unit2D.scale.y= 2
		unit2D.set_texture(unitSprite)
		unit2D.set_hframes(4)
		unit2D.position = Vector2(518, -192)
		caller.add_child(unit2D)
	elif(index == 1):
		unit2D.frame = 1
	elif(index ==2):
		unit2D.frame =2 
	elif(index ==3):	
		unit2D.frame =3
	elif (index ==4):
		caller.remove_child(unit2D)
		picture.position= Vector2(518, -172)
		picture.setTexture(anita)
		picture.setScale(0.2, 0.2)
		caller.add_child(picture)
	elif(index ==5):
		caller.remove_child(picture)
		new_label = Label.new()
		new_label.text = "Games have sexist themes"
		new_label.position = Vector2(0, -172)
		new_label.scale.x = 2
		new_label.scale.y = 2
		caller.add_child(new_label)
	elif(index == 6):
		caller.add_child(unit2D)
		unit2D.frame = 0
		new_label.text = "Games have sexist themes -> games are sexist -> gamers are sexist"
	elif(index ==7):
		new_label.text =""
		caller.remove_child(unit2D)
		caller.add_child(picture)
		picture.setTexture(zoe)
		picture.scale.x = 2
		picture.scale.y = 2
	elif(index == 8):
		caller.remove_child(picture)
		new_label.text = "Story about a popular and controversial figure cheating ->\n Journalists are corrupt -> Wokeness bad"
	elif(index == 9):
		caller.add_child(unit2D)
		new_label.text =""
		print("last")
	elif(index == 10):
		unit2D.set_texture(key)
		unit2D.set_hframes(2)
		unit2D.scale.x = 20
		unit2D.scale.y = 20
		unit2D.texture_filter = 1
		unit2D.frame = 1
		unlocks.red_key = true
		
	index +=1
	pass
