extends Node3D

@onready var bugged_character_path := NodePath("BuggedCharacter")
@onready var bugger_rigid_body_path := NodePath("BuggedRigidBody")

func _ready():
	# This has no influence on the joint, it will
	# simply not attach the two physics bodies
	# like it does if I set these properties through
	# the property editor
	$BuggedJoint.node_a = bugged_character_path
	$BuggedJoint.node_b = bugger_rigid_body_path

func _physics_process(delta):
	$CorrectCharacter.velocity.z = -2.0
	$BuggedCharacter.velocity.z = -2.0
	
	$CorrectCharacter.move_and_slide()
	$BuggedCharacter.move_and_slide()
