# Illicium

To build the C-AST you need to use a Moose image with the FamixMetamodelGenerator.
Those dependencies are only for one package : 'ASTC-Builder'.
You don't need them to work on the rest of the project
You can edit the ast metamodel in : ASTCBuilder
And generate the code using : ASTCGenerator generate.
A Graphical representation can be obtained using Famix : FmxMBVisitor

The generated code is in ASTC-gen.
When regenerating the metamodel code, every package depending on it will be reloaded.
Methods added to the AS TC-gen code should be put in the ASTC-Gen-Extensions package.

Translation happens in ASTC-Translating and ASTC-Kernel.
ASTC-Translating implements how to translate each kind of Pharo AST node using a visitor.
It also implements the translation of classes.
ASTC-Kernel implements classes used to translate the messages.

There's no automated tests for now, but you can use:
ASTCClassTranslator new 
  mainTranslator: ASTCTranslator new;
  translateClass: RandomTestClass.


ASTC-VisitorRB are visitors applied on the Pharo AST before the translation, such as the typing of the AST.
ASTC-VisitorASTC are visitor applied on the result, such as the pretty printing to C code.

Phineas is the type inferencer currently used. It's an external dependency which will be installed by the baseline.


/!\ Currently we don't get C compilation errors on the Pharo side.
We use GCC.
The name of the iceberg project is used in the compilation command line, you can change it in :
ASTC-Translation : ASTCFilePrinter >> CompileExternalPlugin
Didn't find a solution to that problem yet.
