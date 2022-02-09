import 'event_listeners.dart';

class EventManager {
  //Mapa  de ouvintes
  Map<String, EventListeners> _listeners = {};
  // Map<String, dynamic> _listeners = {
  //   "open": EmailAlertsListener(),
  //   "save": LoggingListener()
  // };
  subscribe({required String eventType, required EventListeners listener}) {
    _listeners.addAll({eventType: listener});
  }

  unsubscribe({required String eventType, required EventListeners listener}) {
    _listeners.remove(eventType);
  }

  notify({required String eventType, required String data}) {
    _listeners.forEach((key, value) {
      if (key == eventType) {
        value.update(filename: data);
      }
    });
  }
}
