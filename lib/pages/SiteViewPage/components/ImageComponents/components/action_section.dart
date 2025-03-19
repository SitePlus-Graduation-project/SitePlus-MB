import 'package:flutter/material.dart';
import 'package:siteplus_mb/pages/SiteViewPage/components/ImageComponents/image_upload_controller.dart';

class ActionSection extends StatelessWidget {
  final ImageUploadController controller;
  final VoidCallback onCancel;

  const ActionSection({
    Key? key,
    required this.controller,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            onPressed: onCancel,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            child: const Text('Hủy'),
          ),
          const SizedBox(width: 16),
          FilledButton.icon(
            onPressed:
                controller.isUploading || controller.isLoading
                    ? null
                    : () {
                      controller.confirmSelection();
                    },
            icon: const Icon(Icons.check),
            label: const Text('Xác nhận'),
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}
