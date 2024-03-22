import 'dart:typed_data';
import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_painter/flutter_painter.dart';
import 'dart:ui' as ui;
import 'package:phosphor_flutter/phosphor_flutter.dart';

class drone_image_plotter_drawing_canva_2 extends StatefulWidget {
  const drone_image_plotter_drawing_canva_2({Key? key}) : super(key: key);

  @override
  _drone_image_plotter_drawing_canva_2State createState() =>
      _drone_image_plotter_drawing_canva_2State();
}

class _drone_image_plotter_drawing_canva_2State
    extends State<drone_image_plotter_drawing_canva_2> {
  static const Color red = Color(0xFFFF0000);
  FocusNode textFocusNode = FocusNode();
  late PainterController controller;
  ui.Image? backgroundImage;
  Paint shapePaint = Paint()
    ..strokeWidth = 5
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round;

  static const List<String> imageLinks = [
    "https://cdn-icons-png.freepik.com/512/4215/4215319.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/5026/5026951.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/3935/3935023.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/712/712166.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/3025/3025587.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/12710/12710371.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/4060/4060535.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/3944/3944220.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/4055/4055134.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/6969/6969461.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/4087/4087010.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/1087/1087420.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/765/765599.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/7484/7484120.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/5582/5582672.png?ga=GA1.1.1395355170.1710045942&",
    "https://cdn-icons-png.freepik.com/512/13523/13523358.png?ga=GA1.1.1395355170.1710045942&"
  ];

  @override
  void initState() {
    super.initState();
    controller = PainterController(
        settings: PainterSettings(
            text: TextSettings(
              focusNode: textFocusNode,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: red, fontSize: 18),
            ),
            freeStyle: const FreeStyleSettings(
              color: red,
              strokeWidth: 5,
            ),
            shape: ShapeSettings(
              paint: shapePaint,
            ),
            scale: const ScaleSettings(
              enabled: true,
              minScale: 1,
              maxScale: 20,
            )));
    // Listen to focus events of the text field
    textFocusNode.addListener(onFocus);
    // Initialize background
    initBackground();
  }

  /// Fetches image from an [ImageProvider] (in this example, [NetworkImage])
  /// to use it as a background
  void initBackground() async {
    // Extension getter (.image) to get [ui.Image] from [ImageProvider]
    final image =
        await const NetworkImage('https://i.imgur.com/aQoHMS4.png').image;

    setState(() {
      backgroundImage = image;
      controller.background = image.backgroundDrawable;
    });
  }

  /// Updates UI when the focus changes
  void onFocus() {
    setState(() {});
  }

  Widget buildDefault(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(
            80,
          ),
          child: AppBarWithShadow(
            title: "Agricultural Drone Image Plotter",
            withBackBtn: true,
          ),
        ),
        // Generate image
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.save_as,
          ),
          backgroundColor: Colors.green[500],
          hoverColor: Colors.green[700],
          tooltip: "Save as image",
          onPressed: renderAndDisplayImage,
        ),
        body: Stack(
          children: [
            if (backgroundImage != null)
              // Enforces constraints
              Positioned.fill(
                child: Center(
                  child: AspectRatio(
                    // Dynamically set the aspectRatio based on the image dimensions
                    aspectRatio: backgroundImage!.width /
                        backgroundImage!.height, // Landscape mode,
                    // Portrait mode
                    child: FlutterPainter(
                      controller: controller,
                    ),
                  ),
                ),
              ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: ValueListenableBuilder(
                valueListenable: controller,
                builder: (context, _, __) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 400,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          color: Colors.white54,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (controller.freeStyleMode !=
                                FreeStyleMode.none) ...[
                              const Divider(),
                              const Text("Free Style Settings"),
                              // Control free style stroke width
                              Row(
                                children: [
                                  const Expanded(
                                      flex: 1, child: Text("Stroke Width")),
                                  Expanded(
                                    flex: 3,
                                    child: Slider.adaptive(
                                        min: 2,
                                        max: 25,
                                        value: controller.freeStyleStrokeWidth,
                                        onChanged: setFreeStyleStrokeWidth),
                                  ),
                                ],
                              ),
                              if (controller.freeStyleMode ==
                                  FreeStyleMode.draw)
                                Row(
                                  children: [
                                    const Expanded(
                                        flex: 1, child: Text("Color")),
                                    // Control free style color hue
                                    Expanded(
                                      flex: 3,
                                      child: Slider.adaptive(
                                          min: 0,
                                          max: 359.99,
                                          value: HSVColor.fromColor(
                                                  controller.freeStyleColor)
                                              .hue,
                                          activeColor:
                                              controller.freeStyleColor,
                                          onChanged: setFreeStyleColor),
                                    ),
                                  ],
                                ),
                            ],
                            if (textFocusNode.hasFocus) ...[
                              const Divider(),
                              const Text("Text settings"),
                              // Control text font size
                              Row(
                                children: [
                                  const Expanded(
                                      flex: 1, child: Text("Font Size")),
                                  Expanded(
                                    flex: 3,
                                    child: Slider.adaptive(
                                        min: 8,
                                        max: 96,
                                        value:
                                            controller.textStyle.fontSize ?? 14,
                                        onChanged: setTextFontSize),
                                  ),
                                ],
                              ),

                              // Control text color hue
                              Row(
                                children: [
                                  const Expanded(flex: 1, child: Text("Color")),
                                  Expanded(
                                    flex: 3,
                                    child: Slider.adaptive(
                                        min: 0,
                                        max: 359.99,
                                        value: HSVColor.fromColor(
                                                controller.textStyle.color ??
                                                    red)
                                            .hue,
                                        activeColor: controller.textStyle.color,
                                        onChanged: setTextColor),
                                  ),
                                ],
                              ),
                            ],
                            if (controller.shapeFactory != null) ...[
                              const Divider(),
                              const Text("Shape Settings"),

                              // Control text color hue
                              Row(
                                children: [
                                  const Expanded(
                                      flex: 1, child: Text("Stroke Width")),
                                  Expanded(
                                    flex: 3,
                                    child: Slider.adaptive(
                                        min: 2,
                                        max: 25,
                                        value: controller
                                                .shapePaint?.strokeWidth ??
                                            shapePaint.strokeWidth,
                                        onChanged: (value) =>
                                            setShapeFactoryPaint(
                                                (controller.shapePaint ??
                                                        shapePaint)
                                                    .copyWith(
                                              strokeWidth: value,
                                            ))),
                                  ),
                                ],
                              ),

                              // Control shape color hue
                              Row(
                                children: [
                                  const Expanded(flex: 1, child: Text("Color")),
                                  Expanded(
                                    flex: 3,
                                    child: Slider.adaptive(
                                        min: 0,
                                        max: 359.99,
                                        value: HSVColor.fromColor(
                                                (controller.shapePaint ??
                                                        shapePaint)
                                                    .color)
                                            .hue,
                                        activeColor: (controller.shapePaint ??
                                                shapePaint)
                                            .color,
                                        onChanged: (hue) =>
                                            setShapeFactoryPaint(
                                                (controller.shapePaint ??
                                                        shapePaint)
                                                    .copyWith(
                                              color: HSVColor.fromAHSV(
                                                      1, hue, 1, 1)
                                                  .toColor(),
                                            ))),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  const Expanded(
                                      flex: 1, child: Text("Fill shape")),
                                  Expanded(
                                    flex: 3,
                                    child: Center(
                                      child: Switch(
                                          value: (controller.shapePaint ??
                                                      shapePaint)
                                                  .style ==
                                              PaintingStyle.fill,
                                          onChanged: (value) =>
                                              setShapeFactoryPaint(
                                                  (controller.shapePaint ??
                                                          shapePaint)
                                                      .copyWith(
                                                style: value
                                                    ? PaintingStyle.fill
                                                    : PaintingStyle.stroke,
                                              ))),
                                    ),
                                  ),
                                ],
                              ),
                            ]
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ValueListenableBuilder(
          valueListenable: controller,
          builder: (context, _, __) => Container(
            color: Colors.amber[50],
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Free-style eraser
                IconButton(
                  icon: Icon(
                    PhosphorIcons.eraser(),
                    color: controller.freeStyleMode == FreeStyleMode.erase
                        ? Theme.of(context).primaryColor
                        : null,
                  ),
                  tooltip: "Erase",
                  onPressed: toggleFreeStyleErase,
                ),
                // Free-style drawing
                IconButton(
                  icon: Icon(
                    PhosphorIcons.scribbleLoop(),
                    color: controller.freeStyleMode == FreeStyleMode.draw
                        ? Theme.of(context).primaryColor
                        : null,
                  ),
                  tooltip: "Draw",
                  onPressed: toggleFreeStyleDraw,
                ),
                // Add text
                IconButton(
                  icon: Icon(
                    PhosphorIcons.textT(),
                    color: textFocusNode.hasFocus
                        ? Theme.of(context).primaryColor
                        : null,
                  ),
                  tooltip: "Annotate",
                  onPressed: addText,
                ),
                // Add sticker image
                IconButton(
                  icon: Icon(
                    PhosphorIcons.plant(),
                  ),
                  tooltip: "Add plants statue",
                  onPressed: addSticker,
                ),
                // Add shapes
                if (controller.shapeFactory == null)
                  PopupMenuButton<ShapeFactory?>(
                    tooltip: "Add shape",
                    itemBuilder: (context) => <ShapeFactory, String>{
                      LineFactory(): "Line",
                      ArrowFactory(): "Arrow",
                      DoubleArrowFactory(): "Double Arrow",
                      RectangleFactory(): "Rectangle",
                      OvalFactory(): "Oval",
                    }
                        .entries
                        .map((e) => PopupMenuItem(
                            value: e.key,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  getShapeIcon(e.key),
                                  color: Colors.black,
                                ),
                                Text(" ${e.value}")
                              ],
                            )))
                        .toList(),
                    onSelected: selectShape,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        getShapeIcon(controller.shapeFactory),
                        color: controller.shapeFactory != null
                            ? Theme.of(context).primaryColor
                            : null,
                      ),
                    ),
                  )
                else
                  IconButton(
                    icon: Icon(
                      getShapeIcon(controller.shapeFactory),
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () => selectShape(null),
                  ),
                IconButton(
                  icon: Icon(
                    PhosphorIcons.trash(),
                  ),
                  tooltip: "Remove items",
                  onPressed: controller.selectedObjectDrawable == null
                      ? null
                      : removeSelectedDrawable,
                ),
                // Delete the selected drawable
                IconButton(
                  icon: const Icon(
                    Icons.flip,
                  ),
                  tooltip: "Flip items",
                  onPressed: controller.selectedObjectDrawable != null &&
                          controller.selectedObjectDrawable is ImageDrawable
                      ? flipSelectedImageDrawable
                      : null,
                ),
                // Redo action
                IconButton(
                  icon: Icon(
                    PhosphorIcons.arrowClockwise(),
                  ),
                  tooltip: "Undo",
                  onPressed: controller.canRedo ? redo : null,
                ),
                // Undo action
                IconButton(
                  icon: Icon(
                    PhosphorIcons.arrowCounterClockwise(),
                  ),
                  tooltip: "Redo",
                  onPressed: controller.canUndo ? undo : null,
                ),
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return buildDefault(context);
  }

  static IconData getShapeIcon(ShapeFactory? shapeFactory) {
    if (shapeFactory is LineFactory) return PhosphorIcons.lineSegment();
    if (shapeFactory is ArrowFactory) return PhosphorIcons.arrowUpRight();
    if (shapeFactory is DoubleArrowFactory) {
      return PhosphorIcons.arrowsHorizontal();
    }
    if (shapeFactory is RectangleFactory) return PhosphorIcons.rectangle();
    if (shapeFactory is OvalFactory) return PhosphorIcons.circle();
    return PhosphorIcons.shapes();
  }

  void undo() {
    controller.undo();
  }

  void redo() {
    controller.redo();
  }

  void toggleFreeStyleDraw() {
    controller.freeStyleMode = controller.freeStyleMode != FreeStyleMode.draw
        ? FreeStyleMode.draw
        : FreeStyleMode.none;
  }

  void toggleFreeStyleErase() {
    controller.freeStyleMode = controller.freeStyleMode != FreeStyleMode.erase
        ? FreeStyleMode.erase
        : FreeStyleMode.none;
  }

  void addText() {
    if (controller.freeStyleMode != FreeStyleMode.none) {
      controller.freeStyleMode = FreeStyleMode.none;
    }
    controller.addText();
  }

  void addSticker() async {
    final imageLink = await showDialog<String>(
        context: context,
        builder: (context) => const SelectStickerImageDialog(
              imagesLinks: imageLinks,
            ));
    if (imageLink == null) return;
    controller.addImage(
        await NetworkImage(imageLink).image, const Size(100, 100));
  }

  void setFreeStyleStrokeWidth(double value) {
    controller.freeStyleStrokeWidth = value;
  }

  void setFreeStyleColor(double hue) {
    controller.freeStyleColor = HSVColor.fromAHSV(1, hue, 1, 1).toColor();
  }

  void setTextFontSize(double size) {
    // Set state is just to update the current UI, the [FlutterPainter] UI updates without it
    setState(() {
      controller.textSettings = controller.textSettings.copyWith(
          textStyle:
              controller.textSettings.textStyle.copyWith(fontSize: size));
    });
  }

  void setShapeFactoryPaint(Paint paint) {
    // Set state is just to update the current UI, the [FlutterPainter] UI updates without it
    setState(() {
      controller.shapePaint = paint;
    });
  }

  void setTextColor(double hue) {
    controller.textStyle = controller.textStyle
        .copyWith(color: HSVColor.fromAHSV(1, hue, 1, 1).toColor());
  }

  void selectShape(ShapeFactory? factory) {
    controller.shapeFactory = factory;
  }

  void renderAndDisplayImage() {
    if (backgroundImage == null) return;
    final backgroundImageSize = Size(
        backgroundImage!.width.toDouble(), backgroundImage!.height.toDouble());

    // Render the image
    // Returns a [ui.Image] object, convert to to byte data and then to Uint8List
    final imageFuture = controller
        .renderImage(backgroundImageSize)
        .then<Uint8List?>((ui.Image image) => image.pngBytes);

    // From here, you can write the PNG image data a file or do whatever you want with it
    // For example:
    // ```dart
    // final file = File('${(await getTemporaryDirectory()).path}/img.png');
    // await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    // ```
    // I am going to display it using Image.memory

    // Show a dialog with the image
    showDialog(
        context: context,
        builder: (context) => RenderedImageDialog(imageFuture: imageFuture));
  }

  void removeSelectedDrawable() {
    final selectedDrawable = controller.selectedObjectDrawable;
    if (selectedDrawable != null) controller.removeDrawable(selectedDrawable);
  }

  void flipSelectedImageDrawable() {
    final imageDrawable = controller.selectedObjectDrawable;
    if (imageDrawable is! ImageDrawable) return;

    controller.replaceDrawable(
        imageDrawable, imageDrawable.copyWith(flipped: !imageDrawable.flipped));
  }
}

class RenderedImageDialog extends StatelessWidget {
  final Future<Uint8List?> imageFuture;

  const RenderedImageDialog({Key? key, required this.imageFuture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Rendered Image"),
      content: FutureBuilder<Uint8List?>(
        future: imageFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const SizedBox(
              height: 50,
              child: Center(child: CircularProgressIndicator.adaptive()),
            );
          }
          if (!snapshot.hasData || snapshot.data == null) {
            return const SizedBox();
          }
          return InteractiveViewer(
              maxScale: 10, child: Image.memory(snapshot.data!));
        },
      ),
    );
  }
}

class SelectStickerImageDialog extends StatelessWidget {
  final List<String> imagesLinks;

  const SelectStickerImageDialog({Key? key, this.imagesLinks = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Select plant(s)",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
      ),
      content: imagesLinks.isEmpty
          ? const Text("No plant(s) currently")
          : FractionallySizedBox(
              heightFactor: 0.5,
              child: SingleChildScrollView(
                child: Wrap(
                  children: [
                    for (final imageLink in imagesLinks)
                      InkWell(
                        onTap: () => Navigator.pop(context, imageLink),
                        child: FractionallySizedBox(
                          widthFactor: 1 / 4,
                          child: Image.network(imageLink),
                        ),
                      ),
                  ],
                ),
              ),
            ),
      actions: [
        TextButton(
          child: const Text(
            "Cancel",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );
  }
}
