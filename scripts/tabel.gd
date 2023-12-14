extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	append_text("Transferable Skills from COMM200\n")
	append_text("[table=3]
[cell]Unit[/cell] [cell]Skill[/cell] [cell]Experience Related to Skill[/cell]
[cell]Unit 0: Finding Our Bearings[/cell] [cell]Public speaking\n(Modules)[/cell] [cell]This skill may seem a little too obvious, but the first unit of the class was mostly trying to get acclimated to the environment. While I have presented before, this time there was more emphasis on the speaking part. This is when I first really consumed resources about public speaking which were supplied to us in the modules. \n\nThis skill becomes important for applications in which people need to present ideas in the workplace.[/cell] \n

[cell]Unit 1: Understanding The World & The Other Within It[/cell] [cell]Understanding/ critical thinking\n(Required reading)[/cell] [cell]This unit involved the more complex reading of the unit. I particularly struggled with the language in documents such as Blitzer and The Role of the Critic. The Role of the critic was in unit 0 but the ideas were still very important onwards so I am putting it here.\nNormally most text is organized in such a way that paragraphs usually have one thought, shifts in ideas/topics are clearly demarcated, or main ideas are written to stand out.\nThese texts introduce a lot of ideas which may seem obvious to someone who already understood rhetoric, but was sometimes confusing and misdirecting to those not in the know. \nThe unit was an exercise in my ability to understand what I saw and made me think more deeply about public discourse.[/cell]

[cell]Unit 2: Contributing Toward the ‘Public’ Good[/cell] [cell]Idea generation[/cell] [cell]This one was a bit harder to think about because it was the shortest unit.
\nI think what I struggled with was idea generation. For the Unit 2 test I had trouble trying to come up with good ideas, but I found a method of trying to come up with ideas that I liked and have been using so far. 
\nThis involved first spitballing which is aided by searching online or getting a list of generated topics. I choose to explore an idea that I feel like is going in the right direction. 
\nBy creating this process and utilizing the tools I have, I can work more efficiently. 
[/cell]

[cell]Unit 3 Project: Pitching a Solution[/cell] [cell]Organization and planning/leadership
\n(Presentation)
[/cell] [cell]This group project was one of the first that I really had so much trouble that I would need to meet outside of class to actually complete. While making plans with other people in mind and trying to get everyone on the same page was not exactly a new experience, this  felt like a real test of my ability to do so. 
\nI struggled a lot trying to get everyone coordinated and on the same page given half of the group was absent at the time, and as college students we had much more diverse schedules. There was a lot of confusion on what to focus on/ 
\nI proposed a general structure for the project which would help the group focus on the important parts of what we should do for the project .
\nThrough exercising this skill, we managed to get the project completed.
[/cell]

[/table]")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_just_pressed("ui_accept")):
		get_tree().change_scene_to_file("res://tscns/Main.tscn")
	pass
