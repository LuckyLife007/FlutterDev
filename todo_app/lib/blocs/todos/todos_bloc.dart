import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_app/models/todos_model.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosLoading()) {
    on<LoadTodos>(_onLoadTodos);
    on<AddTodo>(_onAddTodo);
    on<UpdateTodo>(_onUpdateTodo);
    on<DeleteTodo>(_onDeleteTodo);
  }

  void _onLoadTodos(LoadTodos event, Emitter<TodosState> emit) {
    var loadedState = TodosLoaded(todos: event.todos);
    emit(loadedState);
  }

  void _onAddTodo(AddTodo event, Emitter<TodosState> emit) {}
  void _onUpdateTodo(UpdateTodo event, Emitter<TodosState> emit) {}
  void _onDeleteTodo(DeleteTodo event, Emitter<TodosState> emit) {}
}
