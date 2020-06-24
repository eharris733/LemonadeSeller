/// Abstract interface for a business logic component
/// https://www.raywenderlich.com/4074597-getting-started-with-the-bloc-pattern
abstract class Bloc {
  void dispose(); //streams need to be closed or they will cause a memory leak
}