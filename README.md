# Illicium

This projects aims to translate a subset to be defined of Pharo to C, to develop the Pharo Virtual Machine.


To build the C-AST you need to use a Moose image with the FamixMetamodelGenerator.
Those dependencies are only for one package : 'ASTC-Builder'.

You can edit the ast metamodel in : ASTCBuilder
And generate the code using : `ASTCGenerator generate`.
A Graphical representation can be obtained using Famix : FmxMBPlantTextVisitor (Also available by using `ASTCBuilder new toUML`)

The generated code is in ASTC-gen, and the latest version is uploaded in this repository.
When regenerating the metamodel code, every package depending on it will be reloaded.
Methods added to the ASTC-gen code should be put in the ASTC-Gen-Extensions package.

Translation happens in ASTC-Translation and ASTC-Kernel.
ASTC-Translation implements how to translate each kind of Pharo AST node using a visitor.
It also implements the translation of classes.
ASTC-Kernel implements classes used to translate the messages.

Tests are currently being added in Translation-tests, by translating plugins for the virtual machine. 
They therefore depend on the pharo-project/opensmalltalk-vm, and load the CMakeVMMaker package.

ASTC-VisitorRB are visitors applied on the Pharo AST before the translation, such as the typing of the AST.
ASTC-VisitorASTC are visitor applied on the result, such as the pretty printing to C code.

Phineas is the type inferencer currently used. It's an external dependency which will be installed by the baseline.

/!\ Currently we don't get C compilation errors on the Pharo side.
We use GCC.
The name of the iceberg project is used in the compilation command line, you can change it in :
ASTC-Translation : ASTCFilePrinter >> CompileExternalPlugin
Didn't find a solution to that problem yet.
