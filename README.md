# Document Translator with LLM

このプロジェクトは、LLM（大規模言語モデル）を活用したドキュメント翻訳ツールです。  
コマンドラインから簡単にドキュメントを多言語に翻訳できます。

## 特長

- OpenAI API（GPT-4 など）による高品質な翻訳
- Markdown/MDX 構造・コードブロック・用語リストの厳密な維持
- 多言語対応（デフォルトは日本語、他言語も拡張可能）
- 並列処理による高速な大量ファイル翻訳
- 用語やパラメータ名のカスタム辞書・指示文による一貫性のある訳出

## 使い方

### 1. セットアップ

```sh
# Poetry で依存関係をインストール
poetry install
```
### 2. OpenAI API キーの設定

`.env`ファイルに`OPENAI_API_KEY`を記載してください。

### 3. 翻訳実行

* デフォルトでは`docs/`配下の英語ドキュメントを検出し、`docs/ja/`以下に日本語訳を出力します。
* 対応言語や用語リストは`translate_docs.py`内で編集できます。

## カスタマイズ

対応言語追加や用語リストの調整は`translate_docs.py`の`languages`、`eng_to_non_enfg_mapping`などを編集してください。
OpenAI モデルの指定は `OPENAI_MODEL`環境変数で変更できます（例:`gpt-4.1`）。

## 開発環境

* Python 3.11+
* Poetry
* OpenAI Python SDK

Dev Container（VS Code）環境も同梱されています。

## ライセンス

このプロジェクトはMITライセンスです。