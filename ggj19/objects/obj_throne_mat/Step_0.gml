/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 31082BF4
/// @DnDInput : 2
/// @DnDArgument : "expr" "time_win > 0"
/// @DnDArgument : "expr_1" "time_win < (current_time -6000)"
if(time_win > 0 && time_win < (current_time -6000))
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 44A21130
	/// @DnDParent : 31082BF4
	room_goto_next();
}