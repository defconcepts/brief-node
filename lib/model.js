'use strict';

Object.defineProperty(exports, '__esModule', {
  value: true
});

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

var _document = require('./document');

var _document2 = _interopRequireDefault(_document);

var _case = require('./case');

var _case2 = _interopRequireDefault(_case);

var Model = (function () {
  _createClass(Model, null, [{
    key: 'create',
    value: function create(path) {
      var options = arguments.length <= 1 || arguments[1] === undefined ? {} : arguments[1];

      var document = new _document2['default'](path, options);
      return new Model(document, options);
    }
  }]);

  function Model(document) {
    var options = arguments.length <= 1 || arguments[1] === undefined ? {} : arguments[1];

    _classCallCheck(this, Model);

    this.document = document;
    this.data = document.data;
  }

  return Model;
})();

exports['default'] = Model;
module.exports = exports['default'];