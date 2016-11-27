<style>
    table,tr{
        border: 1px solid #333
    }
</style>
<table class="table_list" style="border: 1px solid #333">
<!--    <tr>-->
<!--        <th></th>-->
<!--    </tr>-->
    <tr>
        <th>A101</th>
        <th>A102</th>
        <th>A103</th>
        <th>A104</th>
        <th>A105</th>
        <th>A201</th>
        <th>A202</th>
        <th>A203</th>
        <th>A204</th>
        <th>A205</th>
        <th>A206</th>
        <th>A207</th>
        <th>A208</th>
        <th>A209</th>
        <th>A210</th>
        <th>A211</th>
        <th>A212</th>
        <th>A213</th>
        <th>A214</th>
        <th>A215</th>
        <th>A216</th>
        <th>A217</th>
        <th>A218</th>
        <th>A219</th>
        <th>A220</th>
        <th>A221</th>
        <th>A222</th>
        <th>A223</th>
        <th>A224</th>
        <th>A225</th>
        <th>A226</th>
        <th>A227</th>
    </tr>
    <?php foreach ($lists as $key=>$val):?>
        <tr>
            <td><?= $val['reasonA101'] ?></td>
            <td><?= $val['reasonA102'] ?></td>
            <td><?= $val['reasonA103'] ?></td>
            <td><?= $val['reasonA104'] ?></td>
            <td><?= $val['reasonA105'] ?></td>
            <td><?= $val['reasonA201'] ?></td>
            <td><?= $val['reasonA202'] ?></td>
            <td><?= $val['reasonA203'] ?></td>
            <td><?= $val['reasonA204'] ?></td>
            <td><?= $val['reasonA205'] ?></td>
        </tr>
    <?php endforeach;?>

</table>