/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5519AB99
/// @DnDArgument : "var" "loop_death"
loop_death = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19ED02CB
/// @DnDArgument : "var" "is_pushing"
is_pushing = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 007E2073
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "player_speed"
player_speed = 1;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 46DD0231
/// @DnDArgument : "health" "20"

__dnd_health = real(20);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4186AE5D
/// @DnDArgument : "var" "dir_x"
dir_x = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A5CEB73
/// @DnDArgument : "var" "dir_y"
dir_y = 0;

/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 65377303
/// @DnDArgument : "var" "my_room"
/// @DnDArgument : "var_temp" "1"
var my_room = room;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 372ABDA0
/// @DnDArgument : "expr" "my_room"
var l372ABDA0_0 = my_room;
switch(l372ABDA0_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 02F3D6A9
	/// @DnDParent : 372ABDA0
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 231BBF9C
		/// @DnDParent : 02F3D6A9
		/// @DnDArgument : "msg" ""chegou no case""
		show_debug_message(string("chegou no case"));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49B53C49
		/// @DnDParent : 02F3D6A9
		/// @DnDArgument : "expr" "1500"
		/// @DnDArgument : "var" "obj_hud_life.my_room_speed"
		obj_hud_life.my_room_speed = 1500;
		break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 4EF422B5
	/// @DnDParent : 372ABDA0
	default:
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 7DCC1EAE
		/// @DnDParent : 4EF422B5
		/// @DnDArgument : "msg" ""chegou no default""
		show_debug_message(string("chegou no default"));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49EE74A4
		/// @DnDParent : 4EF422B5
		/// @DnDArgument : "expr" "3000"
		/// @DnDArgument : "var" "obj_hud_life.my_room_speed"
		obj_hud_life.my_room_speed = 3000;
		break;
}