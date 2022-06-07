//---------//
// IMPORTS //
//---------//

local bundle = import 'lib/bundle.libsonnet';
local file_paths = import 'lib/file_paths.libsonnet';
local k = import 'lib/karabiner.libsonnet';


//------//
// MAIN //
//------//

{
  title: 'Windows Shortcuts (itayg)',
  rules: [
    k.rule('Left Arrow (Ctrl)',
           k.input('left_arrow', ['control']),
           k.outputKey('left_arrow', ['option']),
           ),
    k.rule('Right Arrow (Ctrl)',
           k.input('right_arrow', ['control']),
           k.outputKey('right_arrow', ['option']),
           ),
    k.rule('Backspace (Ctrl)',
           k.input('delete_or_backspace', ['control']),
           k.outputKey('delete_or_backspace', ['option']),
           ),
    k.rule('Delete (Ctrl)',
           k.input('delete_forward', ['control']),
           k.outputKey('delete_forward', ['option']),
           ),
    k.rule('A (Ctrl)',
           k.input('a', ['control']),
           k.outputKey('a', ['command']),
           ),
    k.rule('C (Ctrl)',
           k.input('c', ['left_control']),
           k.outputKey('c', ['command']),
           ),
    k.rule('F (Ctrl)',
           k.input('f', ['control']),
           k.outputKey('f', ['command']),
           ),
    k.rule('N (Ctrl)',
           k.input('n', ['control']),
           k.outputKey('n', ['command']),
           ),
    k.rule('O (Ctrl)',
           k.input('o', ['control']),
           k.outputKey('o', ['command']),
           ),
    k.rule('P (Ctrl)',
           k.input('p', ['control']),
           k.outputKey('p', ['command']),
           ),
    k.rule('R (Ctrl)',
           k.input('r', ['control']),
           k.outputKey('r', ['command']),
           ),
    k.rule('S (Ctrl)',
           k.input('s', ['control']),
           k.outputKey('s', ['command']),
           ),
    k.rule('T (Ctrl)',
           k.input('t', ['control']),
           k.outputKey('t', ['command']),
           ),
    k.rule('V (Ctrl)',
           k.input('v', ['control']),
           k.outputKey('v', ['command']),
           ),
    k.rule('W (Ctrl)',
           k.input('w', ['control']),
           k.outputKey('w', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    k.rule('X (Ctrl)',
           k.input('x', ['control']),
           k.outputKey('x', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    k.rule('Y (Ctrl)',
           k.input('y', ['control']),
           k.outputKey('y', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard)),
    k.rule('Z (Ctrl)',
           k.input('z', ['control']),
           k.outputKey('z', ['command']),
           k.condition('unless', bundle.standard, file_paths.standard))
  ]
}
