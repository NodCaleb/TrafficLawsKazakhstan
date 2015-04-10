//
//  MarkupData.m
//  TrafficLawsKazakhstan
//
//  Created by Eugene Rozhkov on 08.04.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "MarkupData.h"

@implementation MarkupData

+ (NSArray *) getAllTheMarkup
{
    NSMutableArray *allTheMarkup = [@[] mutableCopy];
    
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.1", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Разделяет транспортные потоки противоположных направлений и обозначает границы полос движения в опасных местах на дорогах.\nОбозначает границы проезжей части, на которые въезд запрещен.\nОбозначает границы стояночных мест транспортных средств и край проезжей части дорог, не отнесенных к автомагистралям.\nЛинию 1.1 пересекать запрещается. Допускается пересечение для остановки транспортного средства на обочине или как исключение при объезде препятствия, если выполнить его невозможно, не прибегая к этому исключению.", MARKUP_IMAGE_NAME: @"razmetka_1_1.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.2", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"«Широкая сплошная линия» — обозначает край проезжей части на автомагистралях.\nЛинию 1.2 пересекать запрещается. Допускается пересечение для остановки транспортного средства на обочине.", MARKUP_IMAGE_NAME: @"razmetka_1_2.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.3", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Разделяет транспортные потоки противоположных направлений на дорогах, имеющих четыре полосы движения и более.\nЛинию 1.3 пересекать запрещается.", MARKUP_IMAGE_NAME: @"razmetka_1_3.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.4", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Обозначает места, где запрещена остановка.\nПрименяется самостоятельно или в сочетании со знаком3.27 и наносится у края проезжей части или по верху бордюра.\nДействие линии не распространяется на маршрутные транспортные средства.", MARKUP_IMAGE_NAME: @"razmetka_1_4.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.5", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Разделяет транспортные потоки противоположных направлений на дорогах, имеющих две или три полосы\nОбозначает границы полос движения при наличии двух и более полос, предназначенных для движения в одном направлении.\nЛинию 1.5 пересекать разрешается с любой стороны.", MARKUP_IMAGE_NAME: @"razmetka_1_5.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.6", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Линия приближения — прерывистая линия, у которой длина штрихов в 3 раза превышает промежутки между ними) — предупреждает о приближении к разметке 1.1или 1.11, которая разделяет транспортные потоки противоположных или попутных направлений.\nЛинию 1.6 пересекать разрешается с любой стороны.", MARKUP_IMAGE_NAME: @"razmetka_1_6.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.7", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Прерывистая линия с короткими штрихами и равными им промежутками — обозначает границы полос движения в пределах перекрестка.\nЛинию 1.7 пересекать разрешается с любой стороны.", MARKUP_IMAGE_NAME: @"razmetka_1_7.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.8", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Широкая прерывистая линия — обозначает границу между полосой разгона или торможения и основной полосой проезжей части (на перекрестках, пересечениях дорог на разных уровнях, в зоне автобусных остановок и тому подобное).\nЛинию 1.8 пересекать разрешается с любой стороны.", MARKUP_IMAGE_NAME: @"razmetka_1_8.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.9", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Обозначает границы полос движения, на которых осуществляется реверсивное регулирование\nРазделяет транспортные потоки противоположных направлений (при выключенных реверсивных светофорах) на дорогах, где осуществляется реверсивное регулирование.\nЛинию 1.9 при отсутствии реверсивных светофоров или когда они отключены разрешается пересекать, если она расположена справа от водителя; при включенных реверсивных светофорах — с любой стороны, если она разделяет полосы, по которым движение разрешено в одном направлении. При отключении реверсивных светофоров водитель должен немедленно перестроиться вправо за линию разметки 1.9.\nЛинию 1.9, разделяющую транспортные потоки противоположных направлений, при выключенных реверсивных светофорах пересекать запрещается.", MARKUP_IMAGE_NAME: @"razmetka_1_9.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.10", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Обозначает места, где запрещена стоянка.\nПрименяется самостоятельно или в сочетании со знаками 3.28, 3.29 и 3.30 и наносится у края проезжей части или по верху бордюра.\nДействие линии 1.10 не распространяется на транспортные средства, управляемые инвалидами I и II групп или перевозящие таких инвалидов и на такси с включенным таксометром.", MARKUP_IMAGE_NAME: @"razmetka_1_10.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.11", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Разделяет транспортные потоки противоположных или попутных направлений на участках дорог, где перестроение разрешено только из одной полосы.\nОбозначает места, предназначенные для разворота, въезда и выезда со стояночных площадок и тому подобного, где движение разрешено только в одну сторону.\nЛинию 1.11 разрешается пересекать со стороны прерывистой, а также и со стороны сплошной, но только при завершении обгона или объезда.", MARKUP_IMAGE_NAME: @"razmetka_1_11.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.12", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Стоп-линия — указывает место, где водитель должен остановиться при наличии знака 2.5 или при запрещающем сигнале светофора (регулировщика).", MARKUP_IMAGE_NAME: @"razmetka_1_12.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.13", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Указывает место, где водитель должен при необходимости остановиться, уступая дорогу транспортным средствам, движущимся по пересекаемой дороге.", MARKUP_IMAGE_NAME: @"razmetka_1_13.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.14.1", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"«Зебра» — обозначает нерегулируемый пешеходный переход.", MARKUP_IMAGE_NAME: @"razmetka_1_14_1.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.14.2", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"«Зебра» — обозначает нерегулируемый пешеходный переход. Стрелы разметки указывают направление движения пешеходов.", MARKUP_IMAGE_NAME: @"razmetka_1_14_2.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.14.3", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Обозначает пешеходный переход, где движение регулируется светофором.", MARKUP_IMAGE_NAME: @"razmetka_1_14_3.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.15", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Обозначает место, где велосипедная дорожка пересекает проезжую часть.", MARKUP_IMAGE_NAME: @"razmetka_1_15.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.16.1", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Обозначение направляющих островков в местах разделения транспортных потоков противоположных направлений.", MARKUP_IMAGE_NAME: @"razmetka_1_16_1.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.16.2", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Обозначение направляющих островков в местах разделения транспортных потоков одного направления.", MARKUP_IMAGE_NAME: @"razmetka_1_16_2.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.16.3", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Обозначение направляющих островков в местах слияния транспортных потоков.", MARKUP_IMAGE_NAME: @"razmetka_1_16_3.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.17", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Обозначает остановки маршрутных транспортных средств и стоянки такси.", MARKUP_IMAGE_NAME: @"razmetka_1_17.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.18", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Указывает разрешенные на перекрестке направления движения по полосам. Применяется самостоятельно или в сочетании со знаками 5.8.1 и 5.8.2.\nРазметка с изображением тупика наносится для указания того, что поворот на ближайшую проезжую часть запрещен.\nРазметка, разрешающая поворот налево из крайней левой полосы, разрешает и разворот.", MARKUP_IMAGE_NAME: @"razmetka_1_18.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.19", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Предупреждает о приближении к сужению проезжей части (участку, где уменьшается количество полос движения в данном направлении) или к линиям разметки 1.1 или 1.11, разделяющим транспортные потоки противоположных направлений.\nВ первом случае разметка 1.19 может применяться в сочетании со знаками 1.18.1, 1.18.2 и 1.18.3.", MARKUP_IMAGE_NAME: @"razmetka_1_19.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.20", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Предупреждает о приближении к разметке 1.13.", MARKUP_IMAGE_NAME: @"razmetka_1_20.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.21", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Надпись «СТОП» — предупреждает о приближении к разметке 1.12, когда она применяется в сочетании со знаком 2.5", MARKUP_IMAGE_NAME: @"razmetka_1_21.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.22", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Указывает номер дороги (маршрута).", MARKUP_IMAGE_NAME: @"razmetka_1_22.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"1.23", MARKUP_TYPE:@"Horisontal", MARKUP_DESCRIPTION: @"Обозначает специальную полосу для маршрутных транспортных средств.", MARKUP_IMAGE_NAME: @"razmetka_1_23.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"2.1", MARKUP_TYPE:@"Vertical", MARKUP_DESCRIPTION: @"Обозначает элементы дорожных сооружений (опор мостов, путепроводов, торцовых частей парапетов и тому подобного), когда эти элементы представляют опасность для движущихся транспортных средств.", MARKUP_IMAGE_NAME: @"razmetka_2_1.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"2.2", MARKUP_TYPE:@"Vertical", MARKUP_DESCRIPTION: @"Обозначает нижний край пролетного строения тоннелей, мостов и путепроводов.", MARKUP_IMAGE_NAME: @"razmetka_2_2.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"2.3", MARKUP_TYPE:@"Vertical", MARKUP_DESCRIPTION: @"Обозначает круглые тумбы, установленные на разделительных полосах или островках безопасности.", MARKUP_IMAGE_NAME: @"razmetka_2_3.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"2.4", MARKUP_TYPE:@"Vertical", MARKUP_DESCRIPTION: @"Обозначает направляющие столбики, надолбы, опоры ограждений и тому подобное.", MARKUP_IMAGE_NAME: @"razmetka_2_4.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"2.5", MARKUP_TYPE:@"Vertical", MARKUP_DESCRIPTION: @"Обозначает боковые поверхности ограждений дорог на закруглениях малого радиуса, крутых спусках, других опасных участках.", MARKUP_IMAGE_NAME: @"razmetka_2_5.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"2.6", MARKUP_TYPE:@"Vertical", MARKUP_DESCRIPTION: @"Обозначает боковые поверхности ограждений дорог на других участках.", MARKUP_IMAGE_NAME: @"razmetka_2_6.png"}];
    [allTheMarkup addObject:@{MARKUP_NUMBER: @"2.7", MARKUP_TYPE:@"Vertical", MARKUP_DESCRIPTION: @"Обозначает бордюры на опасных участках и возвышающиеся островки безопасности.", MARKUP_IMAGE_NAME: @"razmetka_2_7.png"}];
    
    return [allTheMarkup copy];

}

+ (NSArray *) getMarkupWithType:(NSString *)markupType
{
    NSMutableArray *markup = [@[] mutableCopy];
    
    for (NSDictionary *currentMarkup in [self getAllTheMarkup])
    {
        if ([currentMarkup[MARKUP_TYPE] isEqualToString:markupType])
        {
            [markup addObject:currentMarkup];
        }
    }
    
    return [markup copy];
}

+ (NSDictionary *) getMarkupWithNumber:(NSString *)markupNumber
{
    for (NSDictionary *currentMarkup in [self getAllTheMarkup])
    {
        if ([currentMarkup[MARKUP_NUMBER] isEqualToString:markupNumber])
        {
            return currentMarkup;
        }
    }
    
    return nil;
}

@end
