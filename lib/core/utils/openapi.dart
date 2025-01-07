// Openapi Generator last run: : 2024-03-31T10:51:07.286791
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    inputSpec: RemoteSpec(path: 'http://localhost:8080/swagger/json'),
    additionalProperties:
        AdditionalProperties(pubName: 'astro_api', pubAuthor: 'Johnny dep'),
    generatorName: Generator.dioAlt,
    outputDirectory: 'api/astro_api')
class Example {}