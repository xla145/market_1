<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*" errorPage="" %>
<div id="add-form" style="display: none;margin: 10px;">
	<form class="layui-form">
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>就诊时间：</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.visitime" placeholder="请输就诊时间" autocomplete="off" class="layui-input" lay-verify="required" id="visitTime">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>脈象:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.pulse" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>舌质:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.tongueQuality" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>舌苔:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.fur" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>舌体:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.tongue" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>六经症状：</label>
			<div class="layui-input-inline">
				<select  lay-verify="required" lay-search name="casCase.sixChannel">
					<option value="">请选择</option>
					<option value="1">太阴</option>
					<option value="2">少阴</option>
					<option value="3">厥阴</option>
					<option value="4">太阳</option>
					<option value="5">阳明</option>
					<option value="6">少阳</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>面部皮肤：</label>
			<div class="layui-input-inline">
				<select  lay-verify="required" lay-search name="casCase.face">
					<option value="">请选择</option>
					<option value="1">青</option>
					<option value="2">赤</option>
					<option value="3">黄</option>
					<option value="4">白</option>
					<option value="5">黑</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>咳嗽:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.cough" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>大便:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.excrement" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>小便:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.pee" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>冷热:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.coldHot" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>汗:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.sweat" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>头身:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.headBody" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>饮食:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.diet" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>渴:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.thirsty" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>耳:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.ear" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>耳油:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.earOil" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>月经:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.menstruation" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>肝功能:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.liverFunction" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label"><span>*</span>肾功能:</label>
			<div class="layui-input-inline">
				<input type="text" name="casCase.renalFunction" autocomplete="off" class="layui-input" lay-verify="required">
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">血常规：</label>
			<div class="layui-input-block">
				<textarea name="casCase.bloodRoutine" placeholder="请输入血常规" class="layui-textarea"></textarea>
			</div>
		</div>
	</form>
</div>

