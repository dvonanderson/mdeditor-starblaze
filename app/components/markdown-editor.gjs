import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';

export default class MarkdownEditorComponent extends Component {
  @tracked markdown =
    '# Welcome to MDEditor Starblaze\n\nStart typing your **Markdown** here...\n\n- Item 1\n- Item 2\n- Item 3\n\n```javascript\nconst hello = "world";\n```';

  updateMarkdown = (event) => {
    this.markdown = event.target.value;
  };

  clear = () => {
    this.markdown = '';
  };

  <template>
    <div class="container-fluid px-4 py-3">
      <div class="card shadow-sm mb-4">
        <div
          class="card-header editor-header d-flex justify-content-between align-items-center p-3"
        >
          <h2 class="mb-0">MDEditor Starblaze ⚡</h2>
          <button
            type="button"
            class="btn btn-danger"
            {{on "click" this.clear}}
          >
            <i class="bi bi-x-circle"></i>
            Clear
          </button>
        </div>

        <div class="card-body p-0">
          <div class="row g-0">
            <div class="col-md-6 border-end">
              <div class="p-3">
                <h5 class="mb-3">Markdown Input</h5>
                <textarea
                  aria-label="Markdown Input"
                  class="form-control markdown-input"
                  rows="20"
                  value={{this.markdown}}
                  {{on "input" this.updateMarkdown}}
                  placeholder="Type your markdown here..."
                ></textarea>
              </div>
            </div>

            <div class="col-md-6">
              <div class="p-3">
                <h5 class="mb-3">Preview</h5>
                <div class="markdown-preview">
                  <pre><code>{{this.markdown}}</code></pre>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="card-footer text-center bg-light">
          <small class="text-muted">
            Character count:
            <strong class="text-primary">{{this.markdown.length}}</strong>
          </small>
        </div>
      </div>
    </div>
  </template>
}
