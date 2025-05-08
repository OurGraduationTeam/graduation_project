import 'package:bloc/bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/exceptions.dart';
import 'package:gradution_project/core/models/questionmodel.dart';


part 'quizez_state.dart';

class QuizezCubit extends Cubit<QuizezState> {
  QuizezCubit(this.api) : super(QuizezInitial());
final ApiConsumer api;
  postquizez() async {
    emit(QuizezLoading());
    try {
      final result =  await api.post(
        EndPoints.question,
        data: {
          "userId": "userId",
          "answer": [
            {
              "questionId": "questionId",
              "answer": "answer"
            }
          ]
        },
      );
      
    }  on  ServerException catch (e) {
           emit(QuizezFailure(errorMessasag: e.errModel.message));
      print(e.toString());
    }
  }
}
