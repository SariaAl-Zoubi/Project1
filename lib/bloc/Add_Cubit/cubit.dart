
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/bloc/Add_Cubit/state.dart';

class AddCubit extends Cubit<AddState>{
  File ?image;
  AddCubit():super(InitState());

  static AddCubit get(context)=>BlocProvider.of(context);

  var picker = ImagePicker();
  Future getImage ()async
  {
    final pikedFile=await picker.getImage(source:ImageSource.gallery);
    if(pikedFile !=null)
    {
      image=File(pikedFile.path);
      emit(ImageSuccess());
    }
    else
    {
      emit(ImageError());
    }
  }

}