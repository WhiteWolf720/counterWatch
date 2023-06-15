import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart'; //se debe instalar con flutter pub add fluttertoast o colocarlo en el pubspec

class CounterCubit extends Cubit<int>
{
  CounterCubit() : super(0);

  //void increment() => emit(state + 1); //ejemplos

  void increment()
  {
    if(state!=10){
      emit(state+1);
    } else {
      Fluttertoast.showToast(
        msg: "Diavolo, ha alcanzado el nivel 10 de poder!",
        fontSize: 10.5
      );
    }
  }

  //void decrement() => emit(state - 1); //ejemplos

  void decrement(){
    if(state!=-0){
      emit(state-1);
    } else {
      Fluttertoast.showToast(
        msg: "tss, no le manejo los negativos caballero",
        fontSize: 10.5
      );
    }
  }
  void restart() => emit(0); //regresar el contador a cero
}