part of '../home_view.dart';

class _HeaderCard extends StatelessWidget {
  const _HeaderCard({Key? key}) : super(key: key);

  void _onSelectCategory(Category category) {
    Get.toNamed(category.route);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: PokeballBackground(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTitle(),
            _buildCategories(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.all(28),
        alignment: Alignment.bottomLeft,
        child: Text(
          'What Pokemon\nare you looking for?',
          style: TextStyle(
            fontSize: 30.sp,
            height: 1.6.h,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }

  Widget _buildCategories(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: REdgeInsets.fromLTRB(28, 42, 28, 62),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 2.6,
        mainAxisSpacing: 15,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(
          categories[index],
          onPress: () => _onSelectCategory(categories[index]),
        );
      },
    );
  }
}
