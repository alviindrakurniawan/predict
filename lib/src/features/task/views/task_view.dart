import 'package:exposed/extensions/extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:scora/src/core/core.dart';
import 'package:scora/src/features/task/controllers/task_controller.dart';
import 'package:go_router/go_router.dart';
import 'dart:developer' as developer;

class TaskView extends HookConsumerWidget {
  const TaskView({super.key});

  static const routeName = '/task';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listTask = ref.watch(taskControllerProvider);

    return listTask.when(
        data: (response) {
          developer.log('TaskView: $response');
          if (response != null && response.isEmpty) {
            return Container(
              height: 100,
              child: Center(
                child: Text(
                  'No Task available',
                  style: AppTextStyle.headlineSmall,
                ),
              ),
            );
          }
          return SafeArea(
            child: Container(
              color: Colors.white,
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    scrolledUnderElevation: 0.0,
                    pinned: true,
                    floating: true,
                    snap: true,
                    backgroundColor: Colors.white,
                    // toolbarHeight: 60,
                    title: Center(
                      child: Text(
                        'Task',
                        style: context.headlineSmall,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (context, index) {
                        var data = response[index];
                        return Container(
                          margin: EdgeInsets.only(top: 8),
                          color: Colors.white,
                          child: ListTile(
                            title: Text(data.taskName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),overflow: TextOverflow.clip,),
                            trailing: Container(
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                color: data.isCompleted
                                    ? Colors.grey[200]
                                    : Color(0xFFDAFFDA),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: data.isCompleted
                                      ? Colors.grey.shade200
                                      : primaryColor,
                                  width: 1.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '+${data.token}',
                                  style: TextStyle(
                                    color: data.isCompleted
                                        ? Colors.grey
                                        : primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: response.length,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        error: (error, stack) =>
            Center(child: Text('Error: ${error.toString()}')),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
