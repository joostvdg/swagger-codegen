/**
 *  Copyright 2011 Wordnik, Inc.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
 
package $packageName$

import com.wordnik.swagger.runtime.annotations._

import scala.reflect.BeanProperty

import scala.collection.JavaConversions._

$imports:{ import |
import $import$
}$

/**
 * $model.description$
 *
 * NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
 *
 * @author tony
 *
 */
class $className$ extends $extends$ {

$fields:{ field |
	/**
	 * $field.description$
	 * $if(field.required)$@Required$endif$
	 * $if(field.allowableValues)$@AllowableValues(value="$field.allowedValuesString$")$endif$
	 */
$if(field.fieldDefinition.hasListResponse)$
	var $field.fieldDefinition.name$ $field.fieldDefinition.initialization$
	def get$field.fieldDefinition.NameForMethod$:java.util.List[$field.fieldDefinition.collectionItemType$] = {
	    $field.fieldDefinition.name$.toList
	}
	def set$field.fieldDefinition.NameForMethod$(args:java.util.List[$field.fieldDefinition.collectionItemType$]) = {
	    $field.fieldDefinition.name$.clear
	    args.foreach(arg=>$field.fieldDefinition.name$ += arg)
	}
	$\r$
$else$
    @BeanProperty
    var $field.fieldDefinition.name$:$field.fieldDefinition.returnType$ $field.fieldDefinition.initialization$$\r\r$
$endif$
}$    override def toString:String = {
        "[" +
        $fields:{ field | "$field.fieldDefinition.name$:" + $field.fieldDefinition.name$};separator=" + \r    "$ + "]"
    }
}