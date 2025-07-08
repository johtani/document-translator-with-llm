# Document Translator with LLM

This project is a document translation tool utilizing LLMs (Large Language Models).
You can easily translate documents into multiple languages from the command line.

このプロジェクトは、LLM（大規模言語モデル）を活用したドキュメント翻訳ツールです。  
コマンドラインから簡単にドキュメントを多言語に翻訳できます。

## Features / 特長

- High-quality translation using OpenAI API (e.g., GPT-4)
- Strict preservation of Markdown/MDX structure, code blocks, and glossary terms
- Multilingual support (default: Japanese, extensible to other languages)
- Fast batch translation with parallel processing
- Consistent terminology and parameter names using custom dictionaries and instructions

- OpenAI API（GPT-4 など）による高品質な翻訳
- Markdown/MDX 構造・コードブロック・用語リストの厳密な維持
- 多言語対応（デフォルトは日本語、他言語も拡張可能）
- 並列処理による高速な大量ファイル翻訳
- 用語やパラメータ名のカスタム辞書・指示文による一貫性のある訳出

## Usage / 使い方

### 1. Setup / セットアップ

```sh
# Install dependencies with Poetry
poetry install
```

### 2. Set OpenAI API Key / OpenAI API キーの設定

Add your `OPENAI_API_KEY` to a `.env` file.

`.env`ファイルに`OPENAI_API_KEY`を記載してください。

### 3. Run Translation / 翻訳実行

* By default, English documents under `docs/` are detected and Japanese translations are output to `docs/ja/`.
* Supported languages and glossary can be edited in `translate_docs.py`.

* デフォルトでは`docs/`配下の英語ドキュメントを検出し、`docs/ja/`以下に日本語訳を出力します。
* 対応言語や用語リストは`translate_docs.py`内で編集できます。

## Customization / カスタマイズ

Edit `languages` and `eng_to_non_enfg_mapping` in `translate_docs.py` to add languages or adjust the glossary.
You can change the OpenAI model by setting the `OPENAI_MODEL` environment variable (e.g., `gpt-4.1`).

対応言語追加や用語リストの調整は`translate_docs.py`の`languages`、`eng_to_non_enfg_mapping`などを編集してください。
OpenAI モデルの指定は `OPENAI_MODEL`環境変数で変更できます（例:`gpt-4.1`）。

## Development Environment / 開発環境

* Python 3.11+
* Poetry
* OpenAI Python SDK

Dev Container (VS Code) environment is included.

Dev Container（VS Code）環境も同梱されています。

## License / ライセンス

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

このプロジェクトはMITライセンスです。詳細は[LICENSE](./LICENSE)ファイルをご覧ください。

## Acknowledgements / 謝辞

This tool uses the [OpenAI Python SDK](https://github.com/openai/openai-python).
It was also created with reference to [translate_docs.py in the openai-agents-python repository](https://github.com/openai/openai-agents-python/blob/main/docs/scripts/translate_docs.py).

本ツールは [OpenAI Python SDK](https://github.com/openai/openai-python) を利用しています。
また、[openai-agents-python リポジトリの translate_docs.py](https://github.com/openai/openai-agents-python/blob/main/docs/scripts/translate_docs.py) を参考に作成しました。