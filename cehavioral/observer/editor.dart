import 'dart:io';

import 'event_manager.dart';

class Editor {
  EventManager? events;
  File? file;
  Editor() {
    events = EventManager();
  }
  openFile(String path) {
    file = File(path);
    events?.notify(eventType: "open", data: file!.path);
  }

  saveFile() {
    events?.notify(eventType: "save", data: file!.path);
  }
}
