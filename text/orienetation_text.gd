extends Resource

@export var textList := [ #Orientation
	"What is the role of a critic?",
	"*",
	#"The role of a critic is to analyze and critique text.", 
	"",
	"Okay thats a bit broad, so lets break it down",
	"*",
	"What is a text?",
	"Text can obviously be things like papers or speeches. It's reasonable to assume that adding things on top can be called texts for the purpose of criticism.",
	"*",
	"Infographics of stats, Newspapers with pictures, videos of newscasts, audio recordings of speeches, even games.",
	"But what all these have in common is words.",
	"*",
	"Are posters text? Are wordless videos text? Are photos text? Is interpretive dance text? Are paintings text? Music, Architecture, Art?",
	"I believe that for the purpose of criticism, text can be anything intentionally constructed or directed. It is this intentionality that can be analyzed and critiqued.",
	#Anaysis
	"*",
	"The word “Analyze” hides a lot of detail.  How are we accessing this text and does a text deserve to be analyzed? ",
	"By choosing something to analyze, you see it as something worth analyzing.",
	"This is the power that critics have over text. By criticizing text, this text may reach a new audience depending on how many already know about the original, and the critic is choosing which texts/voices are heard.",
	"*",#5
	"Micheal Lechuga is a prominent rhetorical critic that believes that it is important to leverage this power.", 
	"Critics tend to analyze texts such as presidential addresses and congressional debate which come from individually powerful people under the belief that their conversation is the most important.",
	"Lechuga argues that while they are important, they only represent a small section of discourse. He believes it is also important to analyze items such as tweets because these social media posts represent the average person.",
	"He uses this to represent those who are often underlooked or ignored. The power he holds over these texts is he selects what is collected, analyzed, and viewed by others.",
	"This idea is a topic of debate as critics having this much power over a text can result in issues such as bias.",
	"When asking if text deserves to be analyzed, I believe that it should be important to analyze texts that represent the most common narratives of the common publics and satellites.",
	#Critique
	"*",
	"What deserves to be critiqued? What should be included into a critique such as context?",
	"This idea often comes from trying to separate the rhetoric of a work and what it means and the outside context.",
	"Oftentimes good ideas can have poor rhetoric and bad ideas can be presented well. Oftentimes malicious ideas can hide themselves behind dog whistles.",
	"Is it a critic's responsibility to be 'fair' and divorce the rhetoric from everything else?",
	"*",
	"I would disagree. Context is important to rhetoric as JOHN M. MURPHY, another rhetorical critic, describes, so separating them is difficult. To be “fair” is to not misinterpret or decontextualize text",
	#Summary
	"*",
	"So to sumaraize, the role of a critic is to analyze and critique text.
Text can be of any sort but texts that are more important to analyze are those that represent the common narratives of publics.
When critiquing it is important to understand and incorporate the context.
",
""
]

var index = 0
var strip_sprite : Sprite2D
var OrientationText : Sprite2D
var picTscn :=load("res://tscns/filteredImage.tscn")
var picture =picTscn.instantiate()

var murphy := load("res://download.png")
var cool := preload("res://images/Sprite1_strip4.png")
var orientationSprite := preload("res://images/Sprite2_strip2.png")
func event(caller : Node2D):
	print("index ", index)
	
	if(index ==0):
		strip_sprite = Sprite2D.new()
		strip_sprite.set_hframes(4)
		strip_sprite.set_texture(cool)
		strip_sprite.position = Vector2(518, -352)
		caller.add_child(strip_sprite)
	elif(index ==1):
		strip_sprite.frame = 1
	elif(index ==2):
		OrientationText = Sprite2D.new()
		OrientationText.set_hframes(2)
		OrientationText.scale.x = 2
		OrientationText.scale.y= 2
		OrientationText.set_texture(orientationSprite)
		OrientationText.position = Vector2(518, -172)
		caller.add_child(OrientationText)
	elif(index ==3):
		OrientationText.frame = 1
	elif(index == 4):
		caller.remove_child(OrientationText)
		strip_sprite.frame = 2
	elif(index ==5):
		picture.position= Vector2(518, -172)
		caller.add_child(picture)
	elif (index==7):
		picture.setTexture(murphy)
		
	elif(index ==6):
		strip_sprite.frame = 3
	elif(index ==8):
		caller.remove_child(picture)
		strip_sprite.frame = 0
		
	
	index +=1
	pass
	
