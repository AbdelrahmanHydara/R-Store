// import 'package:dio/dio.dart';
// import 'package:retrofit/retrofit.dart';
// import '../../features/auth/login/data/models/login_request_body.dart';
// import '../../features/auth/login/data/models/login_response.dart';
// import '../../features/auth/register/data/models/register_request_body.dart';
// import '../../features/auth/register/data/models/register_response.dart';
// import 'api_constants.dart';
//
// part 'api_service.g.dart';
//
// @RestApi(baseUrl: ApiConstants.baseUrl)
// abstract class ApiService {
//   factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
//
//   @POST(ApiConstants.login)
//   Future<LoginResponse> login(
//   @Body() LoginRequestBody loginRequestBody,
//       );
//
//   @POST(ApiConstants.register)
//   Future<RegisterResponse> register(
//       @Body() RegisterRequestBody registerRequestBody,
//       );
// }