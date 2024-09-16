# Guj TTS Flutter Package

Check out
[Hugging Face homepage](https://huggingface.co/)

## Getting Started

With Dart
```bash
dart pub add guj_tts
dart pub get
```

With Flutter
```bash
flutter pub add guj_tts
flutter pub get
```


## How to use

See [example](https://github.com/MokshBhansali/guj_tts/blob/main/example/lib/main.dart) for more use case information.

```dart
void main() async {
  // set file path
  final path = "<file path to save speech .flac file>";
  final accessToken = "<Access token generated from Hugging Face Website>";
  final text = "વરસાદ બન્યો વિલન";
  GujTTS.generate(accessToken: accessToken, text: text, filePath: path);
   // do play, upload or do whatever with .flac file
}
```

## Credit
The credit for the model belongs to Vineel Pratap et al. from Meta AI.

```
@article{pratap2023mms,
title={Scaling Speech Technology to 1,000+ Languages},
author={Vineel Pratap and Andros Tjandra and Bowen Shi and Paden Tomasello and Arun Babu and Sayani Kundu and Ali Elkahky and Zhaoheng Ni and Apoorv Vyas and Maryam Fazel-Zarandi and Alexei Baevski and Yossi Adi and Xiaohui Zhang and Wei-Ning Hsu and Alexis Conneau and Michael Auli},
journal={arXiv},
year={2023}
}
```
