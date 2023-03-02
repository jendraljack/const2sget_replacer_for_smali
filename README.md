# const2sget_replacer_for_smali
sorry ,my english is bad.
This shell script for replace id xx;->findViewById(I) kn smali
usualy for system app from other rom but must be same sdk version.
example: we have A device, will install systemUI from B device.
A devices and B devives is Version same SDK.
sometimes ,we get "app force closs"
in my experience.
this cause R$id is not same.
<pre>const vX, 0x102xxxx
invoke-virtual {vY, vX}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object vZ
</pre>

for can be used to other device, we need replacing const to sget.
like this.
<pre>
sget vX, Lcom/android/internal/R$id;->this_const:I
invoke-virtual {vY, vX}, Landroid/view/View;->findViewById(I)Landroid/view/View;
</pre>

Lcom/android/internal/R$id can be found in framework.jar

ty.
