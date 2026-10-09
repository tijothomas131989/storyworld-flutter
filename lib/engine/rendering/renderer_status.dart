enum RendererStatus {
  notConfigured;

  String get label => switch (this) {
        RendererStatus.notConfigured => 'Not configured',
      };
}
