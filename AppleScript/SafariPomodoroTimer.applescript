/* You must enable apple events through the devoloper tab! */




let Safari = Application("Safari")


let script = "setTimeout(() => {alert('Timer has run out!, take a quick break!');}, 1500000);"


Safari.doJavaScript(script, {

    in: Safari.document

})


