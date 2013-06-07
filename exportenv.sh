#
#   Copyright 2012 Jonathan M. Reid. See LICENSE.txt
#   Created by: Jon Reid, http://qualitycoding.org/
#   Source: https://github.com/jonreid/XcodeCoverage
#

setScriptDirectory(){ self="${0#./}"; base="${self%/*}"; if [ $self = $base ];then SDIR="."; else SDIR="$base"; fi; if echo $SDIR | grep "^/"; then SDIR=$SDIR; else SDIR="`pwd`/$SDIR"; fi;}
setScriptDirectory

export | egrep '( BUILT_PRODUCTS_DIR)|(CURRENT_ARCH)|(OBJECT_FILE_DIR_normal)|(SRCROOT)|(OBJROOT)' > "$SDIR/env.sh"
