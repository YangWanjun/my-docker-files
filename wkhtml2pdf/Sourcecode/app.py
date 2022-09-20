import os
import datetime
import random
import pdfkit
from urllib import parse

from flask import Flask, render_template, request, make_response

app = Flask(__name__)
MIME_TYPE_STREAM = 'application/octet-stream'


def get_temp_path():
    """一時フォルダーを取得する。

    :return:
    """
    path = os.path.join(os.path.dirname(__name__), 'temp')
    if not os.path.exists(path):
        os.mkdir(path)
    return path


def get_temp_file(ext):
    """指定拡張子の一時ファイルを取得する。

    :param ext: 拡張子にdotが必要ない（例：「.pdf」の場合「pdf」を渡してください）
    :return:
    """
    temp_root = get_temp_path()
    file_name = "{0}_{1}.{2}".format(
        datetime.datetime.now().strftime('%Y%m%d%H%M%S%f'),
        random.randint(10000, 99999),
        ext
    )
    temp_file = os.path.join(temp_root, file_name)
    return temp_file


def generate_pdf_from_string(html, out_path, config=None):
    try:
        # config = pdfkit.configuration(wkhtmltopdf=r'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe')
        # パスに日本語があったら、エラーになる。暫定対策：英語にしてから、また日本語名に変更する。
        options = {
            'encoding': "UTF-8",
            'page-size': 'A4',
            'dpi': 300,
        }
        if config and isinstance(config, dict):
            options.update(config)
        # css = ['']
        pdfkit.from_string(html, out_path, options=options)
    except Exception as ex:
        app.logger.error(str(ex))


def generate_pdf_to_binary(html, config=None):
    temp_file = get_temp_file('pdf')
    try:
        generate_pdf_from_string(html, temp_file, config)
        data = open(temp_file, 'rb').read()
        return data
    except Exception as ex:
        app.logger.error(str(ex))
    finally:
        if os.path.exists(temp_file):
            os.remove(temp_file)


@app.route('/', methods=['GET', 'POST'])
def index():
    try:
        if request.method == 'POST':
            filename = request.form.get('name', None)
            content = request.form.get('content', None)
            if not content:
                return '変換しようとする内容がありません', 400
            data = generate_pdf_to_binary(content)
            response = make_response()
            response.data = data
            if filename:
                if filename[-4:].lower() != ".pdf":
                    filename += '.pdf'
                    filename = parse.quote(str(filename).encode('utf-8'))
            else:
                filename = 'test.pdf'
            response.headers['Content-Disposition'] = 'attachment; filename=' + filename
            response.mimetype = MIME_TYPE_STREAM
            return response
        else:
            return render_template('test.html', name='ddddaaadddd')
    except Exception as e:
        return str(e), 400


if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)
